.class public Lcom/android/launcher2/searchapp/SelectItem;
.super Lcom/android/launcher2/HomeItem;
.source "SelectItem.java"


# instance fields
.field mComponentName:Landroid/content/ComponentName;

.field final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Lcom/android/launcher2/BaseItem$Type;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/launcher2/HomeItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/searchapp/SelectItem;->mComponentName:Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/android/launcher2/searchapp/SelectItem;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SelectItem;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SelectItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/searchapp/SelectItem;->mComponentName:Landroid/content/ComponentName;

    :cond_0
    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SelectItem;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method
