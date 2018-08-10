.class public abstract Lcom/android/systemui/SystemUI;
.super Ljava/lang/Object;
.source "SystemUI.java"

# interfaces
.implements Lcom/android/systemui/SysUiServiceProvider;


# instance fields
.field public mComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field private mFlipfont:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/SystemUI;->mFlipfont:I

    return-void
.end method

.method public static overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "android.substName"

    const v2, 0x10400b9

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getComponent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mComponents:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mComponents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected onBootCompleted()V
    .locals 0

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->FlipFont:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/SystemUI;->mFlipfont:I

    iget v1, p1, Landroid/content/res/Configuration;->FlipFont:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->SetAppTypeFace(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    iget v0, p1, Landroid/content/res/Configuration;->FlipFont:I

    iput v0, p0, Lcom/android/systemui/SystemUI;->mFlipfont:I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->SetAppTypeFace(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public putComponent(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C:TT;>(",
            "Ljava/lang/Class",
            "<TT;>;TC;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mComponents:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mComponents:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public abstract start()V
.end method
