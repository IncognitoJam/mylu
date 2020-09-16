.class public Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;
.super Ljava/lang/Object;
.source "RCTSensorOrientationChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker$Listener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/lwansbrough/RCTCamera/RCTSensorOrientationListener;

.field mOrientation:I

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;->mOrientation:I

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;->mListener:Lcom/lwansbrough/RCTCamera/RCTSensorOrientationListener;

    .line 28
    new-instance v1, Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker$Listener;

    invoke-direct {v1, p0, v0}, Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker$Listener;-><init>(Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker$1;)V

    iput-object v1, p0, Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    const-string v0, "sensor"

    .line 29
    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;->mSensorManager:Landroid/hardware/SensorManager;

    return-void
.end method

.method static synthetic access$100(Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;)Lcom/lwansbrough/RCTCamera/RCTSensorOrientationListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;->mListener:Lcom/lwansbrough/RCTCamera/RCTSensorOrientationListener;

    return-object p0
.end method


# virtual methods
.method public getOrientation()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;->mOrientation:I

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method public registerOrientationListener(Lcom/lwansbrough/RCTCamera/RCTSensorOrientationListener;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;->mListener:Lcom/lwansbrough/RCTCamera/RCTSensorOrientationListener;

    return-void
.end method

.method public unregisterOrientationListener()V
    .locals 1

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/lwansbrough/RCTCamera/RCTSensorOrientationChecker;->mListener:Lcom/lwansbrough/RCTCamera/RCTSensorOrientationListener;

    return-void
.end method
