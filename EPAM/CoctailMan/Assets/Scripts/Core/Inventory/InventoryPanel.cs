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
        private float buttonWidth = 40;
        [SerializeField]
        private float buttonHeight = 40;

        [SerializeField]
        private int invRows = 6; 
        [SerializeField]
        private int invColumns = 4;

        [SerializeField]
        private float startX = 130f;
        [SerializeField]
        private float startY = 67f;

        private const int x_cell_shift = 5;
        private const int y_cell_shift = 20;

        private Rect inventoryWindowRect = new Rect();
        private Rect inventoryTempRect = new Rect();

        private bool isDragged;
        private Item selectedItem;

        void OnGUI() {
            inventoryWindowRect = new Rect(startX, startY, 170, 265);
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
        }

        void InventoryMode(int id) {
            for (int y = 0; y < invRows; ++y) {
                for (int x = 0; x < invColumns; ++x) {
                    if (playerInventory.ContainsKey(x + y * invColumns))
                    {
                        if (GUI.Button(
                                new Rect(
                                    x_cell_shift + (x * buttonHeight)
                                    , y_cell_shift + (y * buttonHeight)
                                    , buttonWidth
                                    , buttonHeight
                                )
                                , new GUIContent(playerInventory[x + y * invColumns].Texture)
                                , "button")
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
                                        5 + (x * buttonHeight)
                                        , 20 + (y * buttonHeight)
                                        , buttonWidth
                                        , buttonHeight
                                    )
                                    , ""
                                    , "button"
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
                                    x_cell_shift + (x * buttonHeight)
                                    , y_cell_shift + (y * buttonHeight)
                                    , buttonWidth
                                    , buttonHeight
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
