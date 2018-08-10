.class public Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;
.super Ljava/lang/Object;
.source "AccessibilityCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibilityNodeRefresher"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshNode(Landroid/view/accessibility/AccessibilityNodeInfo;Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->refresh(Landroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method
