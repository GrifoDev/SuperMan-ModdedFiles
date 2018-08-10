.class public Lcom/samsung/android/settings/ApplicationsSettings$AppSettingsPreference;
.super Landroid/support/v7/preference/Preference;
.source "ApplicationsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ApplicationsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppSettingsPreference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/ApplicationsSettings;

.field public userHandle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/ApplicationsSettings;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/ApplicationsSettings$AppSettingsPreference;->this$0:Lcom/samsung/android/settings/ApplicationsSettings;

    invoke-direct {p0, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/ApplicationsSettings$AppSettingsPreference;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Lcom/samsung/android/settings/ApplicationsSettings$AppSettingsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p4}, Lcom/samsung/android/settings/ApplicationsSettings$AppSettingsPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/ApplicationsSettings$AppSettingsPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/ApplicationsSettings$AppSettingsPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/ApplicationsSettings$AppSettingsPreference$1;-><init>(Lcom/samsung/android/settings/ApplicationsSettings$AppSettingsPreference;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/ApplicationsSettings$AppSettingsPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method
