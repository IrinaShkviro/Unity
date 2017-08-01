using System.Collections;
using System.Collections.Generic;
using UnityEngine;


namespace Project.Inventory
{
    public class BackPack : MonoBehaviour
    {
        private static BackPack _BackPack;
        public static BackPack GetInstance { get { return _BackPack; } }

        private Dictionary<int, Item> inventory = new Dictionary<int, Item>();

        public Dictionary<int, Item> Inventory { get { return inventory; } }

        void Awake()
        {
            _BackPack = this;
        }

        void AddInBackPack(Item new_item)
        {
            int count = inventory.Count;
            inventory.Add(count, new_item);
        }

        void AddInBackPack(int new_item)
        {
            int count = inventory.Count;
            inventory.Add(count, ItemData.GetInstance.ItemGeneration(new_item));
        }

        void Start()
        {
            AddInBackPack(0);
            AddInBackPack(1);
            AddInBackPack(2);
        }

        void Update()
        {

        }
    }
}
