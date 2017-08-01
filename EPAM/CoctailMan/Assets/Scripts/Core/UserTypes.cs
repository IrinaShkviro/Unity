using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Project.Base
{
    public class UserTypes
    {
        public enum SlotTypes
        {
            RightHand,
            LeftHand
        };
    
    }

    [System.Serializable]
    public class ConstPoint
    {
        [SerializeField]
        private float x;
        [SerializeField]
        private float y;
        public ConstPoint(float x, float y)
        {
            this.x = x;
            this.y = y;
        }
        public float X { get { return x; } }
        public float Y { get { return y; } }
    }
}