# Some-Template-Hackaton-on-elixir

API: 
## Base URL

```
http://localhost:4000/api/posts
```

---

# ## **1. GET /posts**

### **Описание**

Получить список всех постов.

### **Параметры**

Нет.

### **Ответ**

**200 OK**

```json
[
  {
    "id": 1,
    "title": "Example title",
    "body": "Some body"
  },
  ...
]
```

### **Контроллер**

`PostController.index`

---

# ## **2. POST /posts**

### **Описание**

Создать новый пост.

### **Тело запроса**

```json
{
  "title": "My Post",
  "body": "Post content"
}
```

### **Ответ**

**201 Created**

```json
{
  "id": 1,
  "title": "My Post",
  "body": "Post content"
}
```

### **Контроллер**

`PostController.create`

---

# ## **3. GET /posts/:id**

### **Описание**

Получить один пост по его ID.

### **Параметры**

* `id` — ID поста (integer)

### **Ответ**

**200 OK**

```json
{
  "id": 1,
  "title": "My Post",
  "body": "Post content"
}
```

**404 Not Found** — если пост не существует.

### **Контроллер**

`PostController.show`

---

# ## **4. PUT /posts/:id**

### **Описание**

Обновить существующий пост.

### **Тело запроса**

Можно отправить один или оба поля:

```json
{
  "title": "Updated title",
  "body": "Updated body"
}
```

### **Ответ**

**200 OK**

```json
{
  "id": 1,
  "title": "Updated title",
  "body": "Updated body"
}
```

**404 Not Found** — если пост не найден.

### **Контроллер**

`PostController.update`

---

# ## **5. DELETE /posts/:id**

### **Описание**

Удалить пост.

### **Ответ**

**204 No Content** – без тела.

**404 Not Found** – если пост не существует.

### **Контроллер**

`PostController.delete`

---


| Method | Path       | Action | Description        |
| ------ | ---------- | ------ | ------------------ |
| GET    | /posts     | index  | Получить все посты |
| POST   | /posts     | create | Создать пост       |
| GET    | /posts/:id | show   | Получить пост      |
| PUT    | /posts/:id | update | Обновить пост      |
| DELETE | /posts/:id | delete | Удалить пост       |

---