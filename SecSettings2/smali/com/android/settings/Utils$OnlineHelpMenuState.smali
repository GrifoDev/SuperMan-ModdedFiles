.class public Lcom/android/settings/Utils$OnlineHelpMenuState;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnlineHelpMenuState"
.end annotation


# instance fields
.field public iconRes:I

.field public intent:Landroid/content/Intent;

.field public removeTile:Z

.field public titleRes:I


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/settings/Utils$OnlineHelpMenuState;->removeTile:Z

    iput-boolean v1, p0, Lcom/android/settings/Utils$OnlineHelpMenuState;->removeTile:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/Utils$OnlineHelpMenuState;->intent:Landroid/content/Intent;

    iput v1, p0, Lcom/android/settings/Utils$OnlineHelpMenuState;->titleRes:I

    iput v1, p0, Lcom/android/settings/Utils$OnlineHelpMenuState;->iconRes:I

    return-void
.end method
