.class public Lcom/android/incallui/SharedPreferencesUtil;
.super Ljava/lang/Object;
.source "SharedPreferencesUtil.java"


# static fields
.field private static final MODE:I = 0x3

.field private static final SP_NAME:Ljava/lang/String; = "blockNumList"


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "blockNumList"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SharedPreferencesUtil;->sp:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/android/incallui/SharedPreferencesUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SharedPreferencesUtil;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public read(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/SharedPreferencesUtil;->sp:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SharedPreferencesUtil;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/incallui/SharedPreferencesUtil;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
