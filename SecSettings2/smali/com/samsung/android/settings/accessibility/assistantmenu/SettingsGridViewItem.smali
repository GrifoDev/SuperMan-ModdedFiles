.class public Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;
.super Ljava/lang/Object;
.source "SettingsGridViewItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mAct:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

.field private mIcon:I

.field private mName:Ljava/lang/String;


# direct methods
.method constructor <init>(ILcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->mIcon:I

    iput-object p3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->mAct:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->compareTo(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;)I

    move-result v0

    return v0
.end method

.method getAct()Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->mAct:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    return-object v0
.end method

.method getIcon()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->mIcon:I

    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->mName:Ljava/lang/String;

    return-object v0
.end method
