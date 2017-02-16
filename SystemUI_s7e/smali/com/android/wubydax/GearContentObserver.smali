.class public Lcom/android/wubydax/GearContentObserver;
.super Landroid/database/ContentObserver;
.source "GearContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wubydax/GearContentObserver$OnContentChangedListener;
    }
.end annotation


# instance fields
.field private mOnContentChangedListener:Lcom/android/wubydax/GearContentObserver$OnContentChangedListener;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/wubydax/GearContentObserver$OnContentChangedListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/wubydax/GearContentObserver;->mOnContentChangedListener:Lcom/android/wubydax/GearContentObserver$OnContentChangedListener;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/wubydax/GearContentObserver;->mOnContentChangedListener:Lcom/android/wubydax/GearContentObserver$OnContentChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wubydax/GearContentObserver;->mOnContentChangedListener:Lcom/android/wubydax/GearContentObserver$OnContentChangedListener;

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/wubydax/GearContentObserver$OnContentChangedListener;->onContentChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
