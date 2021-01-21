.class public Lorg/reactnative/frame/RNFrame;
.super Ljava/lang/Object;
.source "RNFrame.java"


# instance fields
.field private mDimensions:Lorg/reactnative/camera/utils/ImageDimensions;

.field private mFrame:Lcom/google/android/gms/vision/Frame;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/vision/Frame;Lorg/reactnative/camera/utils/ImageDimensions;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/reactnative/frame/RNFrame;->mFrame:Lcom/google/android/gms/vision/Frame;

    .line 18
    iput-object p2, p0, Lorg/reactnative/frame/RNFrame;->mDimensions:Lorg/reactnative/camera/utils/ImageDimensions;

    return-void
.end method


# virtual methods
.method public getDimensions()Lorg/reactnative/camera/utils/ImageDimensions;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/reactnative/frame/RNFrame;->mDimensions:Lorg/reactnative/camera/utils/ImageDimensions;

    return-object v0
.end method

.method public getFrame()Lcom/google/android/gms/vision/Frame;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/reactnative/frame/RNFrame;->mFrame:Lcom/google/android/gms/vision/Frame;

    return-object v0
.end method
