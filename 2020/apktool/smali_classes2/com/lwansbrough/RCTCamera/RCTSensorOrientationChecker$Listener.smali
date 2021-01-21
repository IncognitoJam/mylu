.class Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker$Listener;
.super Ljava/lang/Object;
.source "RCTSensorOrientationChecker.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;


# direct methods
.method private constructor <init>(Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker$Listener;->this$0:Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker$1;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker$Listener;-><init>(Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    .line 51
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 52
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget p1, p1, v2

    const/high16 v3, 0x40a00000    # 5.0f

    const/high16 v4, -0x3f600000    # -5.0f

    cmpg-float v5, v0, v3

    if-gez v5, :cond_0

    cmpl-float v6, v0, v4

    if-lez v6, :cond_0

    cmpl-float v6, p1, v3

    if-lez v6, :cond_0

    .line 55
    iget-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker$Listener;->this$0:Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;

    iput v1, p1, Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;->mOrientation:I

    goto :goto_0

    :cond_0
    cmpg-float v1, v0, v4

    if-gez v1, :cond_1

    cmpg-float v1, p1, v3

    if-gez v1, :cond_1

    cmpl-float v1, p1, v4

    if-lez v1, :cond_1

    .line 57
    iget-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker$Listener;->this$0:Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;

    const/4 v0, 0x3

    iput v0, p1, Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;->mOrientation:I

    goto :goto_0

    :cond_1
    if-gez v5, :cond_2

    cmpl-float v1, v0, v4

    if-lez v1, :cond_2

    cmpg-float v1, p1, v4

    if-gez v1, :cond_2

    .line 59
    iget-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker$Listener;->this$0:Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;

    const/4 v0, 0x2

    iput v0, p1, Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;->mOrientation:I

    goto :goto_0

    :cond_2
    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    cmpg-float v0, p1, v3

    if-gez v0, :cond_3

    cmpl-float p1, p1, v4

    if-lez p1, :cond_3

    .line 61
    iget-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker$Listener;->this$0:Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;

    iput v2, p1, Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;->mOrientation:I

    .line 63
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker$Listener;->this$0:Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;

    invoke-static {p1}, Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;->access$100(Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;)Lcom/lwansbrough/RCTCamera/RCTSensorOrientationListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 64
    iget-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker$Listener;->this$0:Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;

    invoke-static {p1}, Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;->access$100(Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;)Lcom/lwansbrough/RCTCamera/RCTSensorOrientationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/lwansbrough/RCTCamera/RCTSensorOrientationListener;->orientationEvent()V

    :cond_4
    return-void
.end method
