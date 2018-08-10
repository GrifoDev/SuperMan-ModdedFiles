.class public abstract Lcom/android/settings/search2/InlinePayload;
.super Lcom/android/settings/search2/ResultPayload;
.source "InlinePayload.java"


# instance fields
.field public inlineType:I

.field public settingSource:I

.field public settingsUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/search2/ResultPayload;-><init>()V

    iput-object p1, p0, Lcom/android/settings/search2/InlinePayload;->settingsUri:Ljava/lang/String;

    iput p2, p0, Lcom/android/settings/search2/InlinePayload;->inlineType:I

    iput p3, p0, Lcom/android/settings/search2/InlinePayload;->settingSource:I

    return-void
.end method
