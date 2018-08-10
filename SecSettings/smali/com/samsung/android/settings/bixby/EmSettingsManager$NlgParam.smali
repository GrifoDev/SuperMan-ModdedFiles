.class Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;
.super Ljava/lang/Object;
.source "EmSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bixby/EmSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NlgParam"
.end annotation


# instance fields
.field private mAttrName:Ljava/lang/String;

.field private mAttrValue:Ljava/lang/String;

.field private mExist:Z

.field private mName:Ljava/lang/String;

.field private mValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->mExist:Z

    iput-object p2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->mValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->this$0:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->mExist:Z

    iput-object p2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->mAttrName:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->mAttrValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAttrName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->mAttrName:Ljava/lang/String;

    return-object v0
.end method

.method public getAttrValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->mAttrValue:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->mValue:Ljava/lang/String;

    return-object v0
.end method
