.class public abstract Landroid/media/session/MediaSessionManager$Callback;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAddressedPlayerChanged(Landroid/content/ComponentName;)V
.end method

.method public abstract onAddressedPlayerChanged(Landroid/media/session/MediaSession$Token;)V
.end method

.method public abstract onMediaKeyEventDispatched(Landroid/view/KeyEvent;Landroid/content/ComponentName;)V
.end method

.method public abstract onMediaKeyEventDispatched(Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)V
.end method
