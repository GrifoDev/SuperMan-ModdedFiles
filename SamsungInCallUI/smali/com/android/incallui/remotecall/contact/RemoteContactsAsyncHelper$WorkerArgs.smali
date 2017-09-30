.class final Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper$WorkerArgs;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WorkerArgs"
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public cookie:Ljava/lang/Object;

.field public listener:Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper$OnImageLoadCompleteListener;

.field public photo:Landroid/graphics/drawable/Drawable;

.field public photoUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper$WorkerArgs;-><init>()V

    return-void
.end method
