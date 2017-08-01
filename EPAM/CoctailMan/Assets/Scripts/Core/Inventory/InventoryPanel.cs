using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Project.Base;


namespace Project.Inventory
{
    public class InventoryPanel : MonoBehaviour
    {

        private const int INVENTORY_WINDOW_ID = 0;
        private const int INVENTORY_TEXTURE_ID = 1;

        private const float cell_width = 40;
        private const float cell_height = 40;

        private const float player_width = 160f;
        private const float player_height = 160f;
        [SerializeField]
        private Texture2D player_texture;

        [SerializeField]
        private int n_rows = 6; 
        [SerializeField]
        private int n_columns = 4;

        [SerializeField]
        private ConstPoint inventory_window_shift = new ConstPoint(130f, 67f);

        [SerializeField]
        private ConstPoint cell_shift = new ConstPoint(5f, 20f);
        private float y_shift = 20f;

        private Rect inventory_window_rect = new Rect();
        private Rect inventory_temp_rect = new Rect();

        private bool is_dragged;
        private Item selected_item;

        void OnGUI() {
            inventory_window_rect = new Rect(
                inventory_window_shift.X
                , inventory_window_shift.Y
                , 170
                , 265
            );
            inventory_window_rect = GUI.Window(
                INVENTORY_WINDOW_ID
                , inventory_window_rect
                , InventoryMode
                , "Inventory"
            );

            if (is_dragged) {
                inventory_temp_rect = GUI.Window(
                    INVENTORY_TEXTURE_ID
                    , new Rect(
                        Event.current.mousePosition.x + 1
                        , Event.current.mousePosition.y + 1
                        , 40
                        , 40
                    )
                    , SelectItem
                    , ""
                    , "box"
                );
            }
        }

        void SelectItem(int id)
        {
            GUI.BringWindowToFront(INVENTORY_TEXTURE_ID);
            GUI.DrawTexture(
                new Rect(
                    Event.current.mousePosition.x
                    , Event.current.mousePosition.y
                    , 40
                    , 40
                )
                , selected_item.Texture
            );
        }

        private Dictionary<int, Item> back_pack_inventory = 
            new Dictionary<int, Item>();
        public  Dictionary<PlayerSlot, Item> player_inventory = 
            new Dictionary<PlayerSlot, Item>();

        void Start()
        {
            back_pack_inventory.Add(0, ItemData.GetInstance.ItemGeneration(0));
            back_pack_inventory.Add(1, ItemData.GetInstance.ItemGeneration(1));
            back_pack_inventory.Add(2, ItemData.GetInstance.ItemGeneration(2));
            y_shift = cell_shift.Y + player_height;

            player_inventory.Add(
                new PlayerSlot(
                    UserTypes.SlotTypes.LeftHand
                    , new ConstPoint(player_width - 40f, 50f)
                )
                , null
            );
            player_inventory.Add(
                new PlayerSlot(
                    UserTypes.SlotTypes.RightHand
                    , new ConstPoint(10f, 50f)
                )
                , null
            );
        }

        void InventoryMode(int id) {
            GUI.Label(
                new Rect(
                    cell_shift.X
                    , cell_shift.Y
                    , player_width
                    , player_height
                )
                , new GUIContent(player_texture)
                , "button"
            );

            ICollection<PlayerSlot> slots = player_inventory.Keys;
            foreach (PlayerSlot slot in slots) {
                if (player_inventory[slot] != null) {
                    if (GUI.Button(
                        new Rect(
                            slot.Coord.X
                            , slot.Coord.Y
                            , cell_width
                            , cell_height
                        )
                        , new GUIContent(player_inventory[slot].Texture)
                        , "button")
                    ) {
                        if (!is_dragged) {
                            is_dragged = true;
                            selected_item = player_inventory[slot];
                            player_inventory[slot] = null;
                        }
                    }
                } else {
                    if (is_dragged) {
                        if (GUI.Button(
                                new Rect(
                                    slot.Coord.X
                                    , slot.Coord.Y
                                    , cell_width
                                    , cell_height
                                )
                                , ""
                                , "button"
                        )) {
                            player_inventory[slot] = selected_item;
                            is_dragged = false;
                            selected_item = null;
                        }
                    } else {
                        GUI.Label(
                            new Rect(
                                slot.Coord.X
                                , slot.Coord.Y
                                , cell_width
                                , cell_height
                            )
                            , ""
                            , "button"
                        );
                    }
                }
            }

            for (int y = 0; y < n_rows; ++y) {
                for (int x = 0; x < n_columns; ++x) {
                    if (back_pack_inventory.ContainsKey(x + y * n_columns))
                    {
                        if (GUI.Button(
                                new Rect(
                                    cell_shift.X + (x * cell_height)
                                    , y_shift + (y * cell_height)
                                    , cell_width
                                    , cell_height
                                )
                                , new GUIContent(back_pack_inventory[x + y * n_columns].Texture)
                                , "button")
                            ) {
                            
                            if (!is_dragged) {
                                is_dragged = true; 
                                selected_item = back_pack_inventory[x + y * n_columns];
                                back_pack_inventory.Remove(x + y * n_columns);
                            }
                        }
                    }
                    else {
                        if (is_dragged) {
                            if (GUI.Button(
                                    new Rect(
                                        cell_shift.X + (x * cell_height)
                                        , y_shift + (y * cell_height)
                                        , cell_width
                                        , cell_height
                                    )
                                    , ""
                                    , "button"
                            )) {
                                back_pack_inventory.Add(
                                    x + y * n_columns
                                    , selected_item
                                );
                                is_dragged = false;
                                selected_item = null;
                            }
                        } else {
                            GUI.Label(
                                new Rect(
                                    cell_shift.X + (x * cell_height)
                                    , y_shift + (y * cell_height)
                                    , cell_width
                                    , cell_height
                                )
                                , ""
                                , "button"
                            );
                        }
                    }
                }
            }
        }

        

        void Update() {

        }
    }
} // Project.Inventory
