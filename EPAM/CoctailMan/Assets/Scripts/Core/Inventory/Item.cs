﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Project.Inventory
{
    [System.Serializable]
    public class Item
    {
        [SerializeField]
        private string name;
        [SerializeField]
        private Texture2D texture;

        public string Name { get { return name; } }
        public Texture2D Texture { get { return texture; } } 

        public Item(string name, Texture2D texture) {           
            this.name = name;
            this.texture = texture;
        }

    }
}
