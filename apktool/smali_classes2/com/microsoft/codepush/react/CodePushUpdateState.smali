.class public final enum Lcom/microsoft/codepush/react/CodePushUpdateState;
.super Ljava/lang/Enum;
.source "CodePushUpdateState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/codepush/react/CodePushUpdateState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/codepush/react/CodePushUpdateState;

.field public static final enum LATEST:Lcom/microsoft/codepush/react/CodePushUpdateState;

.field public static final enum PENDING:Lcom/microsoft/codepush/react/CodePushUpdateState;

.field public static final enum RUNNING:Lcom/microsoft/codepush/react/CodePushUpdateState;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/microsoft/codepush/react/CodePushUpdateState;

    const/4 v1, 0x0

    const-string v2, "RUNNING"

    invoke-direct {v0, v2, v1, v1}, Lcom/microsoft/codepush/react/CodePushUpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/codepush/react/CodePushUpdateState;->RUNNING:Lcom/microsoft/codepush/react/CodePushUpdateState;

    .line 5
    new-instance v0, Lcom/microsoft/codepush/react/CodePushUpdateState;

    const/4 v2, 0x1

    const-string v3, "PENDING"

    invoke-direct {v0, v3, v2, v2}, Lcom/microsoft/codepush/react/CodePushUpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/codepush/react/CodePushUpdateState;->PENDING:Lcom/microsoft/codepush/react/CodePushUpdateState;

    .line 6
    new-instance v0, Lcom/microsoft/codepush/react/CodePushUpdateState;

    const/4 v3, 0x2

    const-string v4, "LATEST"

    invoke-direct {v0, v4, v3, v3}, Lcom/microsoft/codepush/react/CodePushUpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/codepush/react/CodePushUpdateState;->LATEST:Lcom/microsoft/codepush/react/CodePushUpdateState;

    const/4 v0, 0x3

    .line 3
    new-array v0, v0, [Lcom/microsoft/codepush/react/CodePushUpdateState;

    sget-object v4, Lcom/microsoft/codepush/react/CodePushUpdateState;->RUNNING:Lcom/microsoft/codepush/react/CodePushUpdateState;

    aput-object v4, v0, v1

    sget-object v1, Lcom/microsoft/codepush/react/CodePushUpdateState;->PENDING:Lcom/microsoft/codepush/react/CodePushUpdateState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/microsoft/codepush/react/CodePushUpdateState;->LATEST:Lcom/microsoft/codepush/react/CodePushUpdateState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/microsoft/codepush/react/CodePushUpdateState;->$VALUES:[Lcom/microsoft/codepush/react/CodePushUpdateState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput p3, p0, Lcom/microsoft/codepush/react/CodePushUpdateState;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/codepush/react/CodePushUpdateState;
    .locals 1

    .line 3
    const-class v0, Lcom/microsoft/codepush/react/CodePushUpdateState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/codepush/react/CodePushUpdateState;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/codepush/react/CodePushUpdateState;
    .locals 1

    .line 3
    sget-object v0, Lcom/microsoft/codepush/react/CodePushUpdateState;->$VALUES:[Lcom/microsoft/codepush/react/CodePushUpdateState;

    invoke-virtual {v0}, [Lcom/microsoft/codepush/react/CodePushUpdateState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/codepush/react/CodePushUpdateState;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/microsoft/codepush/react/CodePushUpdateState;->value:I

    return v0
.end method
