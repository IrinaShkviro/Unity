using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Project.Base;

namespace Project.Inventory
{
    public class PlayerSlot
    {
        private UserTypes.SlotTypes type;
        private ConstPoint coord;

        public UserTypes.SlotTypes Type { get { return type; } }
        public ConstPoint Coord { get { return coord; } }

        public PlayerSlot(UserTypes.SlotTypes type, ConstPoint coord)
        {
            this.type = type;
            this.coord = coord;
        }
    }
} // Project.Inventory