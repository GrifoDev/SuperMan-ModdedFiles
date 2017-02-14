.class final Lcom/android/settings/notification/ZenRuleSelectionDialog$2;
.super Ljava/lang/Object;
.source "ZenRuleSelectionDialog.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenRuleSelectionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/notification/ZenRuleInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$2;->mCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/notification/ZenRuleInfo;Lcom/android/settings/notification/ZenRuleInfo;)I
    .locals 4

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$2;->mCollator:Ljava/text/Collator;

    iget-object v2, p1, Lcom/android/settings/notification/ZenRuleInfo;->packageLabel:Ljava/lang/CharSequence;

    iget-object v3, p2, Lcom/android/settings/notification/ZenRuleInfo;->packageLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$2;->mCollator:Ljava/text/Collator;

    iget-object v2, p1, Lcom/android/settings/notification/ZenRuleInfo;->title:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/settings/notification/ZenRuleInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/settings/notification/ZenRuleInfo;

    check-cast p2, Lcom/android/settings/notification/ZenRuleInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/ZenRuleSelectionDialog$2;->compare(Lcom/android/settings/notification/ZenRuleInfo;Lcom/android/settings/notification/ZenRuleInfo;)I

    move-result v0

    return v0
.end method
