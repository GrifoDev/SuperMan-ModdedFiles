.class public Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;
.super Ljava/lang/Object;
.source "AssistManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/assist/AssistManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AssistanceAppItemList"
.end annotation


# instance fields
.field private mAssistanceAppIcon:Landroid/graphics/drawable/Drawable;

.field private mAssistanceAppName:Ljava/lang/String;

.field private mAssistanceAppType:I

.field private mAssistanceComponent:Landroid/content/ComponentName;

.field private mAssistanceVoiceInteractionService:Landroid/service/voice/VoiceInteractionServiceInfo;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Landroid/service/voice/VoiceInteractionServiceInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceComponent:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceVoiceInteractionService:Landroid/service/voice/VoiceInteractionServiceInfo;

    iput-object p3, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceAppIcon:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceAppName:Ljava/lang/String;

    iput p5, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceAppType:I

    return-void
.end method


# virtual methods
.method public getAssistanceAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceAppIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAssistanceAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getAssistanceAppType()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceAppType:I

    return v0
.end method

.method public getAssistanceComponent()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getAssistanceVoiceInteractionService()Landroid/service/voice/VoiceInteractionServiceInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceVoiceInteractionService:Landroid/service/voice/VoiceInteractionServiceInfo;

    return-object v0
.end method
