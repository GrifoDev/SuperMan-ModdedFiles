.class Lcom/samsung/android/settings/multisound/SelectAudioApplications$AlphaComparator;
.super Ljava/lang/Object;
.source "SelectAudioApplications.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/multisound/SelectAudioApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlphaComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/multisound/SelectAudioApplications;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$AlphaComparator;->this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$AlphaComparator;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/multisound/SelectAudioApplications$AlphaComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    if-nez p1, :cond_0

    const/4 v5, -0x1

    return v5

    :cond_0
    if-nez p2, :cond_1

    const/4 v5, 0x1

    return v5

    :cond_1
    const-string/jumbo v1, ""

    const-string/jumbo v3, ""

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$AlphaComparator;->this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    invoke-static {v5}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->-get4(Lcom/samsung/android/settings/multisound/SelectAudioApplications;)Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$AlphaComparator;->this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    invoke-static {v5}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->-get4(Lcom/samsung/android/settings/multisound/SelectAudioApplications;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$AlphaComparator;->this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    invoke-static {v5}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->-get4(Lcom/samsung/android/settings/multisound/SelectAudioApplications;)Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$AlphaComparator;->this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    invoke-static {v5}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->-get4(Lcom/samsung/android/settings/multisound/SelectAudioApplications;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$AlphaComparator;->sCollator:Ljava/text/Collator;

    invoke-virtual {v5, v1, v3}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    return v5

    :catch_0
    move-exception v4

    const-string/jumbo v5, "SelectAudioApplications"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to find "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
