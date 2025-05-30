## 1. What is PostgreSQL?

**Answer:**  
PostgreSQL হলো রিলেশনাল ডাটাবেজ ম্যানেজমেন্ট সিস্টেম যেখানে আমরা বিভিন্ন ডাটা সংরক্ষণ করে রাখতে পারি। এখানে আমরা টেবিল আকারে ডাটা সংরক্ষণ করি এবং একটি টেবিল অন্য টেবিলের সাথে সংযুক্ত থাকতে পারে।

---

## 2. Explain the Primary Key and Foreign Key concepts in PostgreSQL.

**Answer:**

- **Primary Key**: এটি একটি কলাম, যার প্রতিটি ডাটা ইউনিক। এক কলামের কোনো ডাটা অন্য ডাটার সাথে মিলে না এবং এখানে null ডাটা রাখা যায় না।

- **Foreign Key**: একটি টেবিলের Primary Key অন্য একটি টেবিলে Foreign Key হিসেবে ব্যবহৃত হয়। এটি ব্যবহার করে দুই বা ততোধিক টেবিলের মধ্যে সংযোগ তৈরি করা যায়।

---

## 3. What is the difference between the VARCHAR and CHAR data types?

**Answer:**

- `VARCHAR`: এখানে আমরা একটি সর্বোচ্চ দৈর্ঘ্য নির্ধারণ করি, কিন্তু তার থেকে কম দৈর্ঘ্যের ডাটাও রাখা যায়।
- `CHAR`: এখানে নির্দিষ্ট দৈর্ঘ্য দিতে হয় এবং যদি ডাটা ছোট হয়, তবে বাকি অংশ স্বয়ংক্রিয়ভাবে ফাঁকা স্পেস দিয়ে পূর্ণ হয়।

`CHAR` তুলনামূলকভাবে দ্রুত কাজ করে, তবে `VARCHAR` বেশি নমনীয়।

---

## 4. Explain the purpose of the WHERE clause in a SELECT statement.

**Answer:**  
`WHERE` হলো শর্ত নির্ধারণের অংশ, যা ব্যবহার করে আমরা সমস্ত ডাটা না দেখিয়ে শুধু শর্ত পূরণ করা ডাটা দেখাতে পারি। এটি ডেটাকে ফিল্টার করার জন্য ব্যবহৃত হয়।

Select \* from students where age > 10

---

## 5. What are the LIMIT and OFFSET clauses used for?

**Answer:**

- **LIMIT**:  
   `LIMIT` ব্যবহার করে আমরা নির্ধারণ করতে পারি, ডেটাবেজ থেকে সর্বোচ্চ কতটি রেকর্ড (ডাটা) দেখানো হবে।
  Select \* from students limit 10;

- **OFFSET**:  
   `OFFSET` ব্যবহার করে আমরা বলতে পারি, কতটি রেকর্ড স্কিপ করে পরবর্তী রেকর্ডগুলো দেখাতে হবে।
  Select \* from students offset 10;

**LIMIT** এবং **OFFSET** একসাথে ব্যবহার করে **pagination** (ডাটা পেজে ভাগ করা) করা হয়।

---
