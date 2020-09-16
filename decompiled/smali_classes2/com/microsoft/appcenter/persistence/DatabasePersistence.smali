.class public Lcom/microsoft/appcenter/persistence/DatabasePersistence;
.super Lcom/microsoft/appcenter/persistence/Persistence;
.source "DatabasePersistence.java"


# static fields
.field static final COLUMN_DATA_TYPE:Ljava/lang/String; = "type"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final COLUMN_GROUP:Ljava/lang/String; = "persistence_group"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final COLUMN_LOG:Ljava/lang/String; = "log"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final COLUMN_PRIORITY:Ljava/lang/String; = "priority"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final COLUMN_TARGET_KEY:Ljava/lang/String; = "target_key"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final COLUMN_TARGET_TOKEN:Ljava/lang/String; = "target_token"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final COLUMN_TIMESTAMP:Ljava/lang/String; = "timestamp"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final DATABASE:Ljava/lang/String; = "com.microsoft.appcenter.persistence"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final GET_SORT_ORDER:Ljava/lang/String; = "priority DESC, oid"

.field private static final INDEX_PRIORITY:Ljava/lang/String; = "ix_logs_priority"

.field private static final PAYLOAD_FILE_EXTENSION:Ljava/lang/String; = ".json"

.field private static final PAYLOAD_LARGE_DIRECTORY:Ljava/lang/String; = "/appcenter/database_large_payloads"

.field private static final PAYLOAD_MAX_SIZE:I = 0x1e6666

.field static final SCHEMA:Landroid/content/ContentValues;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final TABLE:Ljava/lang/String; = "logs"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final VERSION:I = 0x5

.field static final VERSION_PRIORITY_KEY:I = 0x4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final VERSION_TARGET_KEY:I = 0x3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final VERSION_TYPE_API_KEY:I = 0x2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field final mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mLargePayloadDirectory:Ljava/io/File;

.field final mPendingDbIdentifiers:Ljava/util/Set;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingDbIdentifiersGroups:Ljava/util/Map;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-wide/16 v0, 0x0

    .line 124
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    invoke-static/range {v2 .. v8}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Landroid/content/ContentValues;

    move-result-object v0

    sput-object v0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->SCHEMA:Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 197
    sget-object v0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->SCHEMA:Landroid/content/ContentValues;

    const/4 v1, 0x5

    invoke-direct {p0, p1, v1, v0}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/content/ContentValues;)V
    .locals 8

    .line 207
    invoke-direct {p0}, Lcom/microsoft/appcenter/persistence/Persistence;-><init>()V

    .line 208
    iput-object p1, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mContext:Landroid/content/Context;

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiersGroups:Ljava/util/Map;

    .line 210
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiers:Ljava/util/Set;

    .line 211
    new-instance v0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    new-instance v7, Lcom/microsoft/appcenter/persistence/DatabasePersistence$1;

    invoke-direct {v7, p0}, Lcom/microsoft/appcenter/persistence/DatabasePersistence$1;-><init>(Lcom/microsoft/appcenter/persistence/DatabasePersistence;)V

    const-string v3, "com.microsoft.appcenter.persistence"

    const-string v4, "logs"

    move-object v1, v0

    move-object v2, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/ContentValues;Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;)V

    iput-object v0, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    .line 241
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/microsoft/appcenter/Constants;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/appcenter/database_large_payloads"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mLargePayloadDirectory:Ljava/io/File;

    .line 244
    iget-object p1, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mLargePayloadDirectory:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    return-void
.end method

.method private varargs countLogs(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .line 422
    invoke-static {}, Lcom/microsoft/appcenter/utils/storage/SQLiteUtils;->newSQLiteQueryBuilder()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v0

    .line 423
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 426
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    const-string v2, "COUNT(*)"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, p2, v3}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getCursor(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    .line 429
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    :try_start_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 432
    throw v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p2

    const-string v0, "AppCenter"

    const-string v1, "Failed to get logs count: "

    .line 434
    invoke-static {v0, v1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return p1
.end method

.method private deleteLog(Ljava/io/File;J)V
    .locals 0

    .line 353
    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLargePayloadFile(Ljava/io/File;J)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 354
    iget-object p1, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    invoke-virtual {p1, p2, p3}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->delete(J)V

    return-void
.end method

.method private static getContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Landroid/content/ContentValues;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 258
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "persistence_group"

    .line 259
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "log"

    .line 260
    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "target_token"

    .line 261
    invoke-virtual {v0, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "type"

    .line 262
    invoke-virtual {v0, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "target_key"

    .line 263
    invoke-virtual {v0, p0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "priority"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "timestamp"

    .line 265
    invoke-virtual {v0, p0, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method private getLogsIds(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteQueryBuilder;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 615
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 617
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    sget-object v2, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->SELECT_PRIMARY_KEY:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, p2, v3}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getCursor(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 620
    iget-object p2, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    invoke-virtual {p2, p1}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->buildValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object p2

    const-string v1, "oid"

    .line 621
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    .line 622
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 625
    :cond_0
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 626
    throw p2
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "AppCenter"

    const-string v1, "Failed to get corrupted ids: "

    .line 628
    invoke-static {p2, v1, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method


# virtual methods
.method public clearPendingLogState()V
    .locals 2

    .line 604
    iget-object v0, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 605
    iget-object v0, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiersGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v0, "AppCenter"

    const-string v1, "Cleared pending log states"

    .line 606
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    invoke-virtual {v0}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->close()V

    return-void
.end method

.method public countLogs(Ljava/lang/String;)I
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 411
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "persistence_group = ?"

    invoke-direct {p0, p1, v0}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->countLogs(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public countLogs(Ljava/util/Date;)I
    .locals 3
    .param p1    # Ljava/util/Date;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 416
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "timestamp < ?"

    invoke-direct {p0, p1, v0}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->countLogs(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public deleteLogs(Ljava/lang/String;)V
    .locals 6

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting all logs from the Persistence database for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppCenter"

    invoke-static {v1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0, p1}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLargePayloadGroupDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 386
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 389
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 394
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 397
    iget-object v0, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    const-string v2, "persistence_group"

    invoke-virtual {v0, v2, p1}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->delete(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v0

    .line 398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " logs."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiersGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 402
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 403
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 404
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public deleteLogs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting logs from the Persistence database for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppCenter"

    invoke-static {v1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "The IDs for deleting log(s) is/are:"

    .line 362
    invoke-static {v1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiersGroups:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 366
    invoke-virtual {p0, p1}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLargePayloadGroupDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 368
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->deleteLog(Ljava/io/File;J)V

    .line 371
    iget-object v2, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiers:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method getLargePayloadFile(Ljava/io/File;J)Ljava/io/File;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 347
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ".json"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getLargePayloadGroupDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 341
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mLargePayloadDirectory:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLogs(Ljava/lang/String;Ljava/util/Collection;ILjava/util/List;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;
    .locals 16
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/Date;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/Date;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Lcom/microsoft/appcenter/ingestion/models/Log;",
            ">;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to get "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " logs from the Persistence database for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "AppCenter"

    invoke-static {v4, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-static {}, Lcom/microsoft/appcenter/utils/storage/SQLiteUtils;->newSQLiteQueryBuilder()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v5

    const-string v0, "persistence_group = ?"

    .line 448
    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 450
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    const-string v7, " AND "

    const/4 v8, 0x0

    if-nez v6, :cond_1

    .line 452
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    .line 453
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v10

    if-ge v9, v10, :cond_0

    const-string v10, "?,"

    .line 454
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 456
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 458
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "target_key NOT IN ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v6, p2

    .line 459
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz p5, :cond_2

    .line 464
    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v6, "timestamp >= ?"

    .line 465
    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 466
    invoke-virtual/range {p5 .. p5}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p6, :cond_3

    .line 469
    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v6, "timestamp < ?"

    .line 470
    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 471
    invoke-virtual/range {p6 .. p6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    :cond_3
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 477
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 478
    invoke-virtual/range {p0 .. p1}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLargePayloadGroupDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 479
    new-array v10, v8, [Ljava/lang/String;

    invoke-interface {v0, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [Ljava/lang/String;

    const/4 v11, 0x0

    .line 483
    :try_start_0
    iget-object v0, v1, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    const-string v12, "priority DESC, oid"

    invoke-virtual {v0, v5, v11, v10, v12}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getCursor(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v12, v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v12, "Failed to get logs: "

    .line 485
    invoke-static {v4, v12, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v12, v11

    :goto_1
    const/4 v13, 0x0

    :goto_2
    if-eqz v12, :cond_b

    .line 487
    iget-object v0, v1, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    .line 488
    invoke-virtual {v0, v12}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->nextValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_b

    if-ge v13, v3, :cond_b

    const-string v14, "oid"

    .line 490
    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    if-nez v14, :cond_6

    const-string v0, "Empty database record, probably content was larger than 2MB, need to delete as it\'s now corrupted."

    .line 499
    invoke-static {v4, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-direct {v1, v5, v10}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLogsIds(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 501
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 502
    iget-object v15, v1, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiers:Ljava/util/Set;

    invoke-interface {v15, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    invoke-interface {v6, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    move-object/from16 p5, v12

    .line 505
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-direct {v1, v9, v11, v12}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->deleteLog(Ljava/io/File;J)V

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Empty database corrupted empty record deleted, id="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_4
    move-object/from16 p5, v12

    move-object/from16 v12, p5

    const/4 v11, 0x0

    goto :goto_3

    :cond_5
    move-object/from16 p5, v12

    goto :goto_5

    :cond_6
    move-object/from16 p5, v12

    .line 514
    iget-object v11, v1, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiers:Ljava/util/Set;

    invoke-interface {v11, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    :try_start_1
    const-string v11, "log"

    .line 519
    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_8

    .line 521
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v1, v9, v11, v12}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLargePayloadFile(Ljava/io/File;J)Ljava/io/File;

    move-result-object v11

    .line 522
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Read payload file "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-static {v11}, Lcom/microsoft/appcenter/utils/storage/FileManager;->read(Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_7

    goto :goto_4

    .line 525
    :cond_7
    new-instance v0, Lorg/json/JSONException;

    const-string v11, "Log payload is null and not stored as a file."

    invoke-direct {v0, v11}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_4
    const-string v12, "type"

    .line 530
    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 531
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLogSerializer()Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    move-result-object v15

    invoke-interface {v15, v11, v12}, Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;->deserializeLog(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/ingestion/models/Log;

    move-result-object v11

    const-string v12, "target_token"

    .line 534
    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 536
    iget-object v12, v1, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getInstance(Landroid/content/Context;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;

    move-result-object v12

    invoke-virtual {v12, v0, v8}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->decrypt(Ljava/lang/String;Z)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;

    move-result-object v0

    .line 537
    invoke-virtual {v0}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;->getDecryptedData()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Lcom/microsoft/appcenter/ingestion/models/Log;->addTransmissionTarget(Ljava/lang/String;)V

    .line 541
    :cond_9
    invoke-interface {v6, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :catch_1
    move-exception v0

    const-string v11, "Cannot deserialize a log in the database"

    .line 546
    invoke-static {v4, v11, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 549
    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_5
    move-object/from16 v12, p5

    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_b
    move-object/from16 p5, v12

    if-eqz p5, :cond_c

    .line 555
    :try_start_2
    invoke-interface/range {p5 .. p5}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    nop

    .line 561
    :cond_c
    :goto_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 562
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 563
    invoke-direct {v1, v9, v7, v8}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->deleteLog(Ljava/io/File;J)V

    goto :goto_7

    :cond_d
    const-string v0, "Deleted logs that cannot be deserialized"

    .line 565
    invoke-static {v4, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    :cond_e
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_f

    const-string v0, "No logs found in the Persistence database at the moment"

    .line 570
    invoke-static {v4, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    return-object v2

    .line 575
    :cond_f
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 578
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Returning "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " log(s) with an ID, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "The SID/ID pairs for returning log(s) is/are:"

    .line 579
    invoke-static {v4, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 581
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 582
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 585
    iget-object v8, v1, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiers:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 588
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v9, p4

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\t"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/microsoft/appcenter/ingestion/models/Log;

    invoke-interface {v6}, Lcom/microsoft/appcenter/ingestion/models/Log;->getSid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 598
    :cond_10
    iget-object v4, v1, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mPendingDbIdentifiersGroups:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public putLog(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)J
    .locals 16
    .param p1    # Lcom/microsoft/appcenter/ingestion/models/Log;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x2L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p3

    const-string v3, "AppCenter"

    .line 279
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Storing a log to the Persistence database for log type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/microsoft/appcenter/ingestion/models/Log;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " with flags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLogSerializer()Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;->serializeLog(Lcom/microsoft/appcenter/ingestion/models/Log;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    .line 284
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    const v6, 0x1e6666

    const/4 v7, 0x0

    if-lt v5, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 288
    :goto_0
    instance-of v8, v0, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    if-nez v6, :cond_1

    .line 292
    invoke-interface/range {p1 .. p1}, Lcom/microsoft/appcenter/ingestion/models/Log;->getTransmissionTargetTokens()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 293
    invoke-static {v8}, Lcom/microsoft/appcenter/ingestion/models/one/PartAUtils;->getTargetKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 294
    iget-object v11, v1, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getInstance(Landroid/content/Context;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v11, v10

    move-object v10, v8

    goto :goto_1

    .line 290
    :cond_1
    new-instance v0, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;

    const-string v2, "Log is larger than 1992294 bytes, cannot send to OneCollector."

    invoke-direct {v0, v2}, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v10, v9

    move-object v11, v10

    .line 299
    :goto_1
    iget-object v8, v1, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    invoke-virtual {v8}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->getMaxSize()J

    move-result-wide v12

    const-wide/16 v14, -0x1

    cmp-long v8, v12, v14

    if-eqz v8, :cond_8

    if-nez v6, :cond_4

    int-to-long v14, v5

    cmp-long v8, v12, v14

    if-lez v8, :cond_3

    goto :goto_2

    .line 304
    :cond_3
    new-instance v0, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Log is too large ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes) to store in database. Current maximum database size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " bytes."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    move-object v8, v9

    goto :goto_3

    :cond_5
    move-object v8, v4

    .line 307
    :goto_3
    invoke-interface/range {p1 .. p1}, Lcom/microsoft/appcenter/ingestion/models/Log;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v7}, Lcom/microsoft/appcenter/Flags;->getPersistenceFlag(IZ)I

    move-result v12

    invoke-interface/range {p1 .. p1}, Lcom/microsoft/appcenter/ingestion/models/Log;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v7, p2

    move-object v9, v10

    move-object v10, v5

    invoke-static/range {v7 .. v13}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Landroid/content/ContentValues;

    move-result-object v2

    .line 308
    iget-object v5, v1, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    const-string v7, "priority"

    invoke-virtual {v5, v2, v7}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->put(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v2, v7, v9

    if-eqz v2, :cond_7

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stored a log to the Persistence database for log type "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/microsoft/appcenter/ingestion/models/Log;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " with databaseId="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_6

    const-string v0, "Payload is larger than what SQLite supports, storing payload in a separate file."

    .line 314
    invoke-static {v3, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    .line 315
    invoke-virtual {v1, v0}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLargePayloadGroupDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 319
    invoke-virtual {v1, v0, v7, v8}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->getLargePayloadFile(Ljava/io/File;J)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 321
    :try_start_1
    invoke-static {v0, v4}, Lcom/microsoft/appcenter/utils/storage/FileManager;->write(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 328
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Payload written to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 325
    iget-object v0, v1, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    invoke-virtual {v0, v7, v8}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->delete(J)V

    .line 326
    throw v2

    :cond_6
    :goto_4
    return-wide v7

    .line 310
    :cond_7
    new-instance v2, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to store a log to the Persistence database for log type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/microsoft/appcenter/ingestion/models/Log;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 301
    :cond_8
    new-instance v0, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;

    const-string v2, "Failed to store a log to the Persistence database."

    invoke-direct {v0, v2}, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_6

    .line 334
    :goto_5
    new-instance v2, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;

    const-string v3, "Cannot save large payload in a file."

    invoke-direct {v2, v3, v0}, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 332
    :goto_6
    new-instance v2, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;

    const-string v3, "Cannot convert to JSON string."

    invoke-direct {v2, v3, v0}, Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setMaxStorageSize(J)Z
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;->mDatabaseManager:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->setMaxSize(J)Z

    move-result p1

    return p1
.end method
