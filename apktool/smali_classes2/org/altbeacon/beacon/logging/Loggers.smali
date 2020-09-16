.class public final Lorg/altbeacon/beacon/logging/Loggers;
.super Ljava/lang/Object;
.source "Loggers.java"


# static fields
.field private static final EMPTY_LOGGER:Lorg/altbeacon/beacon/logging/Logger;

.field private static final INFO_ANDROID_LOGGER:Lorg/altbeacon/beacon/logging/Logger;

.field private static final VERBOSE_ANDROID_LOGGER:Lorg/altbeacon/beacon/logging/Logger;

.field private static final WARNING_ANDROID_LOGGER:Lorg/altbeacon/beacon/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lorg/altbeacon/beacon/logging/EmptyLogger;

    invoke-direct {v0}, Lorg/altbeacon/beacon/logging/EmptyLogger;-><init>()V

    sput-object v0, Lorg/altbeacon/beacon/logging/Loggers;->EMPTY_LOGGER:Lorg/altbeacon/beacon/logging/Logger;

    .line 31
    new-instance v0, Lorg/altbeacon/beacon/logging/VerboseAndroidLogger;

    invoke-direct {v0}, Lorg/altbeacon/beacon/logging/VerboseAndroidLogger;-><init>()V

    sput-object v0, Lorg/altbeacon/beacon/logging/Loggers;->VERBOSE_ANDROID_LOGGER:Lorg/altbeacon/beacon/logging/Logger;

    .line 34
    new-instance v0, Lorg/altbeacon/beacon/logging/InfoAndroidLogger;

    invoke-direct {v0}, Lorg/altbeacon/beacon/logging/InfoAndroidLogger;-><init>()V

    sput-object v0, Lorg/altbeacon/beacon/logging/Loggers;->INFO_ANDROID_LOGGER:Lorg/altbeacon/beacon/logging/Logger;

    .line 37
    new-instance v0, Lorg/altbeacon/beacon/logging/WarningAndroidLogger;

    invoke-direct {v0}, Lorg/altbeacon/beacon/logging/WarningAndroidLogger;-><init>()V

    sput-object v0, Lorg/altbeacon/beacon/logging/Loggers;->WARNING_ANDROID_LOGGER:Lorg/altbeacon/beacon/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static empty()Lorg/altbeacon/beacon/logging/Logger;
    .locals 1

    .line 43
    sget-object v0, Lorg/altbeacon/beacon/logging/Loggers;->EMPTY_LOGGER:Lorg/altbeacon/beacon/logging/Logger;

    return-object v0
.end method

.method public static infoLogger()Lorg/altbeacon/beacon/logging/Logger;
    .locals 1

    .line 59
    sget-object v0, Lorg/altbeacon/beacon/logging/Loggers;->INFO_ANDROID_LOGGER:Lorg/altbeacon/beacon/logging/Logger;

    return-object v0
.end method

.method public static verboseLogger()Lorg/altbeacon/beacon/logging/Logger;
    .locals 1

    .line 51
    sget-object v0, Lorg/altbeacon/beacon/logging/Loggers;->VERBOSE_ANDROID_LOGGER:Lorg/altbeacon/beacon/logging/Logger;

    return-object v0
.end method

.method public static warningLogger()Lorg/altbeacon/beacon/logging/Logger;
    .locals 1

    .line 67
    sget-object v0, Lorg/altbeacon/beacon/logging/Loggers;->WARNING_ANDROID_LOGGER:Lorg/altbeacon/beacon/logging/Logger;

    return-object v0
.end method
