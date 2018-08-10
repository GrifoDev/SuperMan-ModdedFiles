.class final Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActiveForegroundApp"
.end annotation


# instance fields
.field mAppOnTop:Z

.field mEndTime:J

.field mHideTime:J

.field mLabel:Ljava/lang/CharSequence;

.field mNumActive:I

.field mPackageName:Ljava/lang/String;

.field mShownWhileScreenOn:Z

.field mShownWhileTop:Z

.field mStartTime:J

.field mStartVisibleTime:J

.field mUid:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
