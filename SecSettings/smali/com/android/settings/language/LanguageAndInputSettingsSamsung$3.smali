.class Lcom/android/settings/language/LanguageAndInputSettingsSamsung$3;
.super Landroid/database/ContentObserver;
.source "LanguageAndInputSettingsSamsung.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/language/LanguageAndInputSettingsSamsung;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;


# direct methods
.method constructor <init>(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$3;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$3;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-wrap7(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)V

    return-void
.end method
