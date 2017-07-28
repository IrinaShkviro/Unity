using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Project.Inventory
{
    public class ItemData : MonoBehaviour
    {
        private static ItemData _ItemData;
        public static ItemData GetInstance { get { return _ItemData; } }
        public List<Item> items = new List<Item>();

        void Awake() {
            _ItemData = this;
        }

        public Item ItemGeneration(int id) {
            string name = items[id].Name;
            Texture2D texture = items[id].Texture;
            Item item = new Item(name, texture);
            return item;
        }

        void Start() {
        }

        void Update() {
        }
    }
}
