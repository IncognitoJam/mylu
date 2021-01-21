.class Lcom/microsoft/appcenter/persistence/DatabasePersistence$1;
.super Ljava/lang/Object;
.source "DatabasePersistence.java"

# interfaces
.implements Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/persistence/DatabasePersistence;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/persistence/DatabasePersistence;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/persistence/DatabasePersistence;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/microsoft/appcenter/persistence/DatabasePersistence$1;->this$0:Lcom/microsoft/appcenter/persistence/DatabasePersistence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createPriorityIndex(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE INDEX `ix_logs_priority` ON logs (`priority`)"

    .line 214
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 219
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/persistence/DatabasePersistence$1;->createPriorityIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)Z
    .locals 0

    const/4 p3, 0x2

    if-ge p2, p3, :cond_0

    const-string p3, "ALTER TABLE logs ADD COLUMN `target_token` TEXT"

    .line 227
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "ALTER TABLE logs ADD COLUMN `type` TEXT"

    .line 228
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const/4 p3, 0x3

    if-ge p2, p3, :cond_1

    const-string p3, "ALTER TABLE logs ADD COLUMN `target_key` TEXT"

    .line 231
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    const/4 p3, 0x4

    if-ge p2, p3, :cond_2

    const-string p2, "ALTER TABLE logs ADD COLUMN `priority` INTEGER DEFAULT 1"

    .line 234
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    const-string p2, "ALTER TABLE logs ADD COLUMN `timestamp` INTEGER DEFAULT 0"

    .line 236
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 237
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/persistence/DatabasePersistence$1;->createPriorityIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 p1, 0x1

    return p1
.end method
