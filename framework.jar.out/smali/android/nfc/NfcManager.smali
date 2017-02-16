.class public final Landroid/nfc/NfcManager;
.super Ljava/lang/Object;
.source "NfcManager.java"


# instance fields
.field private mAdapter:Landroid/nfc/NfcAdapter;

.field private mIsBinded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v3, p0, Landroid/nfc/NfcManager;->mIsBinded:Z

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 49
    if-nez p1, :cond_0

    .line 50
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 51
    const-string/jumbo v3, "context not associated with any application (using a mock context?)"

    .line 50
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 55
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/nfc/NfcManager;->mIsBinded:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    :goto_0
    iput-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 46
    return-void

    .line 56
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    const/4 v0, 0x0

    .line 59
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    iput-boolean v3, p0, Landroid/nfc/NfcManager;->mIsBinded:Z

    goto :goto_0
.end method


# virtual methods
.method public bindNfcService(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    iget-boolean v2, p0, Landroid/nfc/NfcManager;->mIsBinded:Z

    if-eqz v2, :cond_0

    return-void

    .line 74
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 75
    if-nez p1, :cond_1

    .line 76
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 77
    const-string/jumbo v3, "context not associated with any application (using a mock context?)"

    .line 76
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 81
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/nfc/NfcManager;->mIsBinded:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    :goto_0
    iput-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 71
    return-void

    .line 82
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    const/4 v0, 0x0

    .line 85
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/nfc/NfcManager;->mIsBinded:Z

    goto :goto_0
.end method

.method public getDefaultAdapter()Landroid/nfc/NfcAdapter;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method
