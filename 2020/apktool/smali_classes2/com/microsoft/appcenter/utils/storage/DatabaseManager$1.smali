.class Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/utils/storage/DatabaseManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/ContentValues;Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

.field final synthetic val$uniqueColumns:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/utils/storage/DatabaseManager;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I[Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;->this$0:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    iput-object p6, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;->val$uniqueColumns:[Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;->this$0:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    invoke-static {v0}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->access$000(Lcom/microsoft/appcenter/utils/storage/DatabaseManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;->this$0:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    invoke-static {v2}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->access$100(Lcom/microsoft/appcenter/utils/storage/DatabaseManager;)Landroid/content/ContentValues;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;->val$uniqueColumns:[Ljava/lang/String;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->access$200(Lcom/microsoft/appcenter/utils/storage/DatabaseManager;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;->this$0:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    invoke-static {v0}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->access$300(Lcom/microsoft/appcenter/utils/storage/DatabaseManager;)Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;->this$0:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    invoke-static {v0}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->access$300(Lcom/microsoft/appcenter/utils/storage/DatabaseManager;)Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)Z

    move-result p2

    if-nez p2, :cond_0

    .line 123
    iget-object p2, p0, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;->this$0:Lcom/microsoft/appcenter/utils/storage/DatabaseManager;

    invoke-static {p2}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager;->access$000(Lcom/microsoft/appcenter/utils/storage/DatabaseManager;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/storage/SQLiteUtils;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0, p1}, Lcom/microsoft/appcenter/utils/storage/DatabaseManager$1;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method
