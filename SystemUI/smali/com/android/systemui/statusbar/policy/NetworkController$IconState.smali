.class public Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
.super Ljava/lang/Object;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconState"
.end annotation


# instance fields
.field public final contentDescription:Ljava/lang/String;

.field public final icon:I

.field public final iconOverlay:I

.field public final visible:Z


# direct methods
.method public constructor <init>(ZIILandroid/content/Context;)V
    .locals 1

    invoke-virtual {p4, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    iput p2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput p3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->iconOverlay:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZIILjava/lang/String;)V

    return-void
.end method
