.class Lorg/altbeacon/beacon/service/scanner/ScanFilterUtils$ScanFilterData;
.super Ljava/lang/Object;
.source "ScanFilterUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/service/scanner/ScanFilterUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanFilterData"
.end annotation


# instance fields
.field public filter:[B

.field public manufacturer:I

.field public mask:[B

.field public serviceUuid:Ljava/lang/Long;

.field final synthetic this$0:Lorg/altbeacon/beacon/service/scanner/ScanFilterUtils;


# direct methods
.method constructor <init>(Lorg/altbeacon/beacon/service/scanner/ScanFilterUtils;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lorg/altbeacon/beacon/service/scanner/ScanFilterUtils$ScanFilterData;->this$0:Lorg/altbeacon/beacon/service/scanner/ScanFilterUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lorg/altbeacon/beacon/service/scanner/ScanFilterUtils$ScanFilterData;->serviceUuid:Ljava/lang/Long;

    return-void
.end method
