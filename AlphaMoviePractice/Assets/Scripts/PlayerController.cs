﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    public float Speed = 8;

    private Rigidbody2D m_rigidBody;

    void Start()
    {
        m_rigidBody = GetComponent<Rigidbody2D>();
    }

    void Update()
    {
        // 入力
        float h = Input.GetAxisRaw("Horizontal");
        float v = Input.GetAxisRaw("Vertical");

        // 移動
        Vector2 direction = new Vector2(h, v);
        m_rigidBody.velocity = direction.normalized * Speed;
    }
}
