.class public Lcom/android/contacts/commonbind/ObjectFactory;
.super Ljava/lang/Object;
.source "ObjectFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogger()Lcom/android/contacts/common/logging/Logger;
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPreferenceManager(Landroid/content/Context;)Lcom/android/contacts/common/preference/PreferenceManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method
