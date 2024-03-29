curl http://localhost:8080/v1/audio/speech \
-H "Content-Type: application/json" \
-d '{
  "model": "tts-1",
  "input": "The quick brown fox jumped over the lazy dog.",
  "voice": "alloy"
}' \
--output speech.mp3
