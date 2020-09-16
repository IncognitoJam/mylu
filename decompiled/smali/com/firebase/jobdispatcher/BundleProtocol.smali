.class final Lcom/firebase/jobdispatcher/BundleProtocol;
.super Ljava/lang/Object;
.source "BundleProtocol.java"


# static fields
.field static final PACKED_PARAM_BUNDLE_PREFIX:Ljava/lang/String; = "com.firebase.jobdispatcher."

.field static final PACKED_PARAM_CONSTRAINTS:Ljava/lang/String; = "constraints"

.field static final PACKED_PARAM_EXTRAS:Ljava/lang/String; = "extras"

.field static final PACKED_PARAM_LIFETIME:Ljava/lang/String; = "persistent"

.field static final PACKED_PARAM_RECURRING:Ljava/lang/String; = "recurring"

.field static final PACKED_PARAM_REPLACE_CURRENT:Ljava/lang/String; = "replace_current"

.field static final PACKED_PARAM_RETRY_STRATEGY_INITIAL_BACKOFF_SECONDS:Ljava/lang/String; = "initial_backoff_seconds"

.field static final PACKED_PARAM_RETRY_STRATEGY_MAXIMUM_BACKOFF_SECONDS:Ljava/lang/String; = "maximum_backoff_seconds"

.field static final PACKED_PARAM_RETRY_STRATEGY_POLICY:Ljava/lang/String; = "retry_policy"

.field static final PACKED_PARAM_SERVICE:Ljava/lang/String; = "service"

.field static final PACKED_PARAM_TAG:Ljava/lang/String; = "tag"

.field static final PACKED_PARAM_TRIGGER_TYPE:Ljava/lang/String; = "trigger_type"

.field static final PACKED_PARAM_TRIGGER_WINDOW_END:Ljava/lang/String; = "window_end"

.field static final PACKED_PARAM_TRIGGER_WINDOW_START:Ljava/lang/String; = "window_start"

.field static final TRIGGER_TYPE_EXECUTION_WINDOW:I = 0x1

.field static final TRIGGER_TYPE_IMMEDIATE:I = 0x2


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
