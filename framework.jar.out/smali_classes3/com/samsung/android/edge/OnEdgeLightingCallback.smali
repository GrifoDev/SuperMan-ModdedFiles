.class public interface abstract Lcom/samsung/android/edge/OnEdgeLightingCallback;
.super Ljava/lang/Object;
.source "OnEdgeLightingCallback.java"


# static fields
.field public static final CONDITION_ALWAYS:I = 0x7

.field public static final CONDITION_SCREEN_OFF:I = 0x2

.field public static final CONDITION_SCREEN_ON:I = 0x1

.field public static final CONDITION_TURN_OVER:I = 0x4

.field public static final REASON_APP_REQUEST:I = 0x0

.field public static final REASON_NOTIFICATION:I = 0x1

.field public static final REASON_TOAST:I = 0x2

.field public static final REASON_TURN_OVER_NOTIFICATION:I = 0x7

.field public static final REASON_TURN_OVER_RINGING:I = 0x8

.field public static final REASON_WAKE_LOCK:I = 0x4

.field public static final REASON_WAKE_LOCK_BY_WINDOW:I = 0x6

.field public static final REASON_WAKE_UP:I = 0x3

.field public static final REASON_WAKE_UP_BY_WINDOW:I = 0x5


# virtual methods
.method public abstract onScreenChanged(Z)V
.end method

.method public abstract onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
.end method

.method public abstract onStopEdgeLighting(Ljava/lang/String;I)V
.end method
