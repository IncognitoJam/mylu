.class public final Lde/patwoz/rn/bluetoothstatemanager/BridgeUtils;
.super Ljava/lang/Object;
.source "BridgeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromBluetoothState(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unknown"

    return-object p0

    :pswitch_0
    const-string p0, "PoweredOn"

    return-object p0

    :pswitch_1
    const-string p0, "Resetting"

    return-object p0

    :pswitch_2
    const-string p0, "PoweredOff"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
