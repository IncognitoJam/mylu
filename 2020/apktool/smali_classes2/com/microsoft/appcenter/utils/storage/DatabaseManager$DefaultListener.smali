.class public Lcom/microsoft/appcenter/utils/storage/DatabaseManager$DefaultListener;
.super Ljava/lang/Object;
.source "DatabaseManager.java"

# interfaces
.implements Lcom/microsoft/appcenter/utils/storage/DatabaseManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/utils/storage/DatabaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
