.class final Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;
.super Ljava/lang/Object;
.source "CallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallerInfoAsyncQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CookieWrapper"
.end annotation


# instance fields
.field public cookie:Ljava/lang/Object;

.field public event:I

.field public listener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

.field public number:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/CallerInfoAsyncQuery$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/CallerInfoAsyncQuery$1;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;-><init>()V

    return-void
.end method
