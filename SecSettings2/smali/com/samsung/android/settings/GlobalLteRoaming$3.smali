.class Lcom/samsung/android/settings/GlobalLteRoaming$3;
.super Ljava/lang/Object;
.source "GlobalLteRoaming.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/GlobalLteRoaming;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/GlobalLteRoaming;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/GlobalLteRoaming;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/GlobalLteRoaming$3;->this$0:Lcom/samsung/android/settings/GlobalLteRoaming;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    const-string/jumbo v1, "GlobalLteRoaming"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreferenceChange: LTE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/GlobalLteRoaming$3;->this$0:Lcom/samsung/android/settings/GlobalLteRoaming;

    invoke-static {v1}, Lcom/samsung/android/settings/GlobalLteRoaming;->-wrap1(Lcom/samsung/android/settings/GlobalLteRoaming;)V

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalLteRoaming$3;->this$0:Lcom/samsung/android/settings/GlobalLteRoaming;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/settings/GlobalLteRoaming;->-wrap2(Lcom/samsung/android/settings/GlobalLteRoaming;Z)V

    goto :goto_0
.end method
