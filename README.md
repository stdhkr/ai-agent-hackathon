## Firebase

Firestoreルールデプロイ
```bash
firebase deploy --only firestore:rules
```

Storageルールデプロイ
```bash
firebase deploy --only storage:rules
```

Cloud Functionsデプロイ
```bash
firebase deploy --only functions:api
firebase deploy --only functions:onUserXpChange
```
