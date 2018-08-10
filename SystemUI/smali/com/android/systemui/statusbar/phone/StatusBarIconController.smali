.class public interface abstract Lcom/android/systemui/statusbar/phone/StatusBarIconController;
.super Ljava/lang/Object;
.source "StatusBarIconController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;,
        Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;
    }
.end annotation


# direct methods
.method public static getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    if-nez p0, :cond_0

    const-string/jumbo p0, "rotate,headset"

    :cond_0
    const-string/jumbo v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    array-length v4, v0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public abstract addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
.end method

.method public abstract removeIcon(Ljava/lang/String;)V
.end method

.method public abstract removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
.end method

.method public abstract setExternalIcon(Ljava/lang/String;)V
.end method

.method public abstract setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V
.end method

.method public abstract setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
.end method

.method public abstract setIconVisibility(Ljava/lang/String;Z)V
.end method
