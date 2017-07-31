using System.Collections;
using System.Collections.Generic;
using UnityEngine;


namespace Project.Inventory
{
    public class InventoryPanel : MonoBehaviour
    {

        private const int INVENTORY_WINDOW_ID = 0;
        private const int INVENTORY_TEXTURE_ID = 1;

        [SerializeField]
        private float cellWidth = 40;
        [SerializeField]
        private float cellHeight = 40;

        [SerializeField]
        private float playerWidth = 160f;
        [SerializeField]
        private float playerHeight = 160f;
        [SerializeField]
        private Texture2D playerTexture;

        [SerializeField]
        private int invRows = 6; 
        [SerializeField]
        private int invColumns = 4;

        [SerializeField]
        private float x_inventory_shift = 130f;
        [SerializeField]
        private float y_window_inventory_shift = 67f;

        private const float x_cell_shift = 5f;
        private const float y_player_shift = 20f;
        private float y_cell_shift = 20f;

        private Rect inventoryWindowRect = new Rect();
        private Rect inventoryTempRect = new Rect();

        private bool isDragged;
        private Item selectedItem;

        void OnGUI() {
            inventoryWindowRect = new Rect(
                x_inventory_shift
                , y_window_inventory_shift
                , 170
                , 265
            );
            inventoryWindowRect = GUI.Window(
                INVENTORY_WINDOW_ID
                , inventoryWindowRect
                , InventoryMode
                , "Inventory"
            );

            if (isDragged) {
                inventoryTempRect = GUI.Window(
                    INVENTORY_TEXTURE_ID
                    , new Rect(
                        Event.current.mousePosition.x + 1
                        , Event.current.mousePosition.y + 1
                        , 40
                        , 40
                    )
                    , SelectItem
                    , ""
                    , "TempBox"
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
                , selectedItem.Texture
            );
        }

        private Dictionary<int, Item> playerInventory = new Dictionary<int, Item>();

        void Start()
        {
            playerInventory.Add(0, ItemData.GetInstance.ItemGeneration(0));
            playerInventory.Add(1, ItemData.GetInstance.ItemGeneration(1));
            playerInventory.Add(2, ItemData.GetInstance.ItemGeneration(2));
            y_cell_shift = y_player_shift + playerHeight;
        }

        void InventoryMode(int id) {
            GUI.Label(
                new Rect(
                    x_cell_shift
                    , y_player_shift
                    , playerWidth
                    , playerHeight
                )
                , new GUIContent(playerTexture)
                , "cell"
            );
            for (int y = 0; y < invRows; ++y) {
                for (int x = 0; x < invColumns; ++x) {
                    if (playerInventory.ContainsKey(x + y * invColumns))
                    {
                        if (GUI.Button(
                                new Rect(
                                    x_cell_shift + (x * cellHeight)
                                    , y_cell_shift + (y * cellHeight)
                                    , cellWidth
                                    , cellHeight
                                )
                                , new GUIContent(playerInventory[x + y * invColumns].Texture)
                                , "cell")
                            ) {
                            
                            if (!isDragged) {
                                isDragged = true; 
                                selectedItem = playerInventory[x + y * invColumns];
                                playerInventory.Remove(x + y * invColumns);
                            }
                        }
                    }
                    else {
                        if (isDragged) {
                            if (GUI.Button(
                                    new Rect(
                                        x_cell_shift + (x * cellHeight)
                                        , y_cell_shift + (y * cellHeight)
                                        , cellWidth
                                        , cellHeight
                                    )
                                    , ""
                                    , "cell"
                            )) {
                                playerInventory.Add(
                                    x + y * invColumns
                                    , selectedItem
                                );
                                isDragged = false;
                                selectedItem = null;
                            }
                        } else {
                            GUI.Label(
                                new Rect(
                                    x_cell_shift + (x * cellHeight)
                                    , y_cell_shift + (y * cellHeight)
                                    , cellWidth
                                    , cellHeight
                                )
                                , ""
                                , "cell"
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
