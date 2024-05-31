# PostgreSQL-to-Elasticsearch
Perform the CDC operation using Elasticsearch Kafka and Debezium from PostgreSQL

## Docker ortamında Debezium, Kafka kullanarak PostgreSQL, Elasticsearch arasında CDC işlemini yürütme

### Adım - 1 
Repodaki dosyaları çek ( Windows için Docker Desktop Kurulumunu tamamlamış olmalısın.)

```
git clone https://github.com/atfatmc/CDC-PostgreSQL-to-Elasticsearch.git
```

### Adım - 2
VS Code, PowerShell veya kullandığın bir IDE de komut ile gerekli Konteynerları ayağa kaldır.

```
docker compose up --build -d
```

### Adım - 3
Kafka için Kowl arayüzünü kontrol et


Kowl
```
http://localhost:8080/

```

PostgreSQL Veri Tabanı Bağlantısı ( istersen DBeaver ile Bağlantını test edebilirsin.)
```
Host : localhost
Port : 5432
Veri Tabanı : cdc_db
Kullanıcı Adı : postgres
Şifre : postgres
```

Şimdilik Kowl ekranı ve PostgreSQL bağlantımızı kontrol etmemiz yeterli bundan sonraki yapılacak tüm adımlar aşağıdaki linkte

...
