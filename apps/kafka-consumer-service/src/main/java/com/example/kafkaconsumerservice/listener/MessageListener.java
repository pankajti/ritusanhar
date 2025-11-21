package com.example.kafkaconsumerservice.listener;

import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Component;

@Component
public class MessageListener {

    @KafkaListener(topics = "demo-topic", groupId = "consumer-group-1")
    public void listen(String message) {
        System.out.println("🔥 Received message: " + message);
    }
}
