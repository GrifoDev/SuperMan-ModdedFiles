.class public Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;
.super Ljava/lang/Object;
.source "RestrictedDropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/RestrictedDropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RestrictedItem"
.end annotation


# instance fields
.field public final enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field public final entry:Ljava/lang/CharSequence;

.field public final entryValue:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;->entry:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;->entryValue:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedItem;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-void
.end method
