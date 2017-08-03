using System.Collections;
using System.Collections.Generic;
using UnityEngine;


namespace Project.Mob
{
    public class AIController : MonoBehaviour
    {

        [SerializeField]
        private float look_at_radius = 20f;
        [SerializeField]
        private float attack_radius = 10f;
        [SerializeField]
        private float move_speed = 3f;

        [SerializeField]
        private GameObject target;

        private Rigidbody mob_body;


        private bool is_attacking = false;
        private float damping = 6.0f;

        void Start()
        {
            mob_body = gameObject.GetComponent<Rigidbody>();
        }

        void Update()
        {
            float distance = Vector3.Distance(target.transform.position, transform.position);

            if (distance < look_at_radius)
            {
                is_attacking = false;
                GoTo();
            }
            if (distance < attack_radius)
            {
                Attack();
            }

        }

        void GoTo()
        {
           // transform.position = Vector3.MoveTowards(transform.position, target.transform.position, Time.deltaTime * move_speed);
            Vector3  direction = (target.transform.position - transform.position).normalized * move_speed;
            mob_body.velocity = direction;
            Debug.Log(direction);
            //Move.MoveAtPoint(gameObject.GetComponent<Rigidbody>(), target.transform, move_speed);
        }

        void Attack()
        {
            is_attacking = true;
            transform.Translate(Vector3.forward * move_speed * Time.deltaTime);
        }
    }
}
