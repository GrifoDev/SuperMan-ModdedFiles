.class public Landroid/provider/SettingsStringUtil$SettingStringHelper;
.super Ljava/lang/Object;
.source "SettingsStringUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SettingsStringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingStringHelper"
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mSettingName:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/provider/SettingsStringUtil$SettingStringHelper;->mContentResolver:Landroid/content/ContentResolver;

    iput p3, p0, Landroid/provider/SettingsStringUtil$SettingStringHelper;->mUserId:I

    iput-object p2, p0, Landroid/provider/SettingsStringUtil$SettingStringHelper;->mSettingName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public modify(Ljava/util/function/Function;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->read()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->write(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public read()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/provider/SettingsStringUtil$SettingStringHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/provider/SettingsStringUtil$SettingStringHelper;->mSettingName:Ljava/lang/String;

    iget v2, p0, Landroid/provider/SettingsStringUtil$SettingStringHelper;->mUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Landroid/provider/SettingsStringUtil$SettingStringHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/provider/SettingsStringUtil$SettingStringHelper;->mSettingName:Ljava/lang/String;

    iget v2, p0, Landroid/provider/SettingsStringUtil$SettingStringHelper;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
