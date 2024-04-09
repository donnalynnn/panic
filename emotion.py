from django.http import JsonResponse
from transformers import pipeline 
# import nltk
# nltk.download('punkt')

def getEmotion(text):
    classifier = pipeline(task="text-classification", model="SamLowe/roberta-base-go_emotions", top_k=None)
   
    model_outputs = classifier(text)
    return model_outputs