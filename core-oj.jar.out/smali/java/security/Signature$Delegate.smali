.class Ljava/security/Signature$Delegate;
.super Ljava/security/Signature;
.source "Signature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Delegate"
.end annotation


# static fields
.field private static final I_PRIV:I = 0x2

.field private static final I_PRIV_SR:I = 0x3

.field private static final I_PUB:I = 0x1

.field private static warnCount:I


# instance fields
.field private final lock:Ljava/lang/Object;

.field private sigSpi:Ljava/security/SignatureSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1085
    const/16 v0, 0xa

    sput v0, Ljava/security/Signature$Delegate;->warnCount:I

    .line 1018
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 1036
    invoke-direct {p0, p1}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    .line 1037
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/security/Signature$Delegate;->lock:Ljava/lang/Object;

    .line 1035
    return-void
.end method

.method constructor <init>(Ljava/security/SignatureSpi;Ljava/lang/String;)V
    .locals 1
    .param p1, "sigSpi"    # Ljava/security/SignatureSpi;
    .param p2, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 1029
    invoke-direct {p0, p2}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    .line 1030
    iput-object p1, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    .line 1031
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/Signature$Delegate;->lock:Ljava/lang/Object;

    .line 1028
    return-void
.end method

.method private chooseProvider(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 11
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 1143
    iget-object v8, p0, Ljava/security/Signature$Delegate;->lock:Ljava/lang/Object;

    monitor-enter v8

    .line 1144
    :try_start_0
    iget-object v7, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    if-eqz v7, :cond_0

    if-nez p2, :cond_0

    .line 1145
    iget-object v7, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-direct {p0, v7, p1, p2, p3}, Ljava/security/Signature$Delegate;->init(Ljava/security/SignatureSpi;ILjava/security/Key;Ljava/security/SecureRandom;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 1146
    return-void

    .line 1148
    :cond_0
    const/4 v2, 0x0

    .line 1150
    .local v2, "lastException":Ljava/lang/Exception;
    :try_start_1
    invoke-static {p0}, Ljava/security/Signature;->-get0(Ljava/security/Signature;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "NONEwithRSA"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1151
    invoke-static {}, Ljava/security/Signature;->-get2()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lsun/security/jca/GetInstance;->getServices(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 1156
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    :goto_0
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v2    # "lastException":Ljava/lang/Exception;
    .local v5, "s$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider$Service;

    .line 1158
    .local v4, "s":Ljava/security/Provider$Service;
    invoke-virtual {v4, p2}, Ljava/security/Provider$Service;->supportsParameter(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1162
    invoke-static {v4}, Ljava/security/Signature;->-wrap0(Ljava/security/Provider$Service;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_1

    .line 1166
    :try_start_2
    invoke-static {v4}, Ljava/security/Signature$Delegate;->newInstance(Ljava/security/Provider$Service;)Ljava/security/SignatureSpi;

    move-result-object v6

    .line 1167
    .local v6, "spi":Ljava/security/SignatureSpi;
    invoke-direct {p0, v6, p1, p2, p3}, Ljava/security/Signature$Delegate;->init(Ljava/security/SignatureSpi;ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 1168
    invoke-virtual {v4}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v7

    iput-object v7, p0, Ljava/security/Signature$Delegate;->provider:Ljava/security/Provider;

    .line 1169
    iput-object v6, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v8

    .line 1170
    return-void

    .line 1153
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    .end local v4    # "s":Ljava/security/Provider$Service;
    .end local v5    # "s$iterator":Ljava/util/Iterator;
    .end local v6    # "spi":Ljava/security/SignatureSpi;
    .restart local v2    # "lastException":Ljava/lang/Exception;
    :cond_2
    :try_start_3
    const-string/jumbo v7, "Signature"

    .line 1154
    invoke-static {p0}, Ljava/security/Signature;->-get0(Ljava/security/Signature;)Ljava/lang/String;

    move-result-object v9

    .line 1153
    invoke-static {v7, v9}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    goto :goto_0

    .line 1171
    .end local v2    # "lastException":Ljava/lang/Exception;
    .restart local v4    # "s":Ljava/security/Provider$Service;
    .restart local v5    # "s$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 1175
    .local v0, "e":Ljava/lang/Exception;
    if-nez v2, :cond_3

    .line 1176
    move-object v2, v0

    .line 1178
    :cond_3
    instance-of v7, v2, Ljava/security/InvalidKeyException;

    if-eqz v7, :cond_1

    .line 1179
    check-cast v2, Ljava/security/InvalidKeyException;

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1143
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    .end local v4    # "s":Ljava/security/Provider$Service;
    .end local v5    # "s$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 1184
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    .restart local v5    # "s$iterator":Ljava/util/Iterator;
    :cond_4
    :try_start_4
    instance-of v7, v2, Ljava/security/InvalidKeyException;

    if-eqz v7, :cond_5

    .line 1185
    check-cast v2, Ljava/security/InvalidKeyException;

    throw v2

    .line 1187
    :cond_5
    instance-of v7, v2, Ljava/lang/RuntimeException;

    if-eqz v7, :cond_6

    .line 1188
    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 1190
    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1191
    .local v1, "k":Ljava/lang/String;
    :goto_1
    new-instance v7, Ljava/security/InvalidKeyException;

    .line 1192
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "No installed provider supports this key: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1191
    invoke-direct {v7, v9, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 1190
    .end local v1    # "k":Ljava/lang/String;
    :cond_7
    const-string/jumbo v1, "(null)"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v1    # "k":Ljava/lang/String;
    goto :goto_1
.end method

.method private init(Ljava/security/SignatureSpi;ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "spi"    # Ljava/security/SignatureSpi;
    .param p2, "type"    # I
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 1203
    packed-switch p2, :pswitch_data_0

    .line 1214
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Internal error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1205
    :pswitch_0
    check-cast p3, Ljava/security/PublicKey;

    .end local p3    # "key":Ljava/security/Key;
    invoke-virtual {p1, p3}, Ljava/security/SignatureSpi;->engineInitVerify(Ljava/security/PublicKey;)V

    .line 1202
    :goto_0
    return-void

    .line 1208
    .restart local p3    # "key":Ljava/security/Key;
    :pswitch_1
    check-cast p3, Ljava/security/PrivateKey;

    .end local p3    # "key":Ljava/security/Key;
    invoke-virtual {p1, p3}, Ljava/security/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;)V

    goto :goto_0

    .line 1211
    .restart local p3    # "key":Ljava/security/Key;
    :pswitch_2
    check-cast p3, Ljava/security/PrivateKey;

    .end local p3    # "key":Ljava/security/Key;
    invoke-virtual {p1, p3, p4}, Ljava/security/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    goto :goto_0

    .line 1203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static newInstance(Ljava/security/Provider$Service;)Ljava/security/SignatureSpi;
    .locals 6
    .param p0, "s"    # Ljava/security/Provider$Service;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 1066
    invoke-virtual {p0}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Cipher"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1069
    :try_start_0
    const-string/jumbo v3, "RSA/ECB/PKCS1Padding"

    invoke-virtual {p0}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v4

    invoke-static {v3, v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 1070
    .local v0, "c":Ljavax/crypto/Cipher;
    new-instance v3, Ljava/security/Signature$CipherAdapter;

    invoke-direct {v3, v0}, Ljava/security/Signature$CipherAdapter;-><init>(Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 1071
    .end local v0    # "c":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v1

    .line 1072
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v3, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1075
    .end local v1    # "e":Ljavax/crypto/NoSuchPaddingException;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1076
    .local v2, "o":Ljava/lang/Object;
    instance-of v3, v2, Ljava/security/SignatureSpi;

    if-nez v3, :cond_1

    .line 1077
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    .line 1078
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Not a SignatureSpi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1077
    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1080
    :cond_1
    check-cast v2, Ljava/security/SignatureSpi;

    .end local v2    # "o":Ljava/lang/Object;
    return-object v2
.end method


# virtual methods
.method chooseFirstProvider()V
    .locals 10

    .prologue
    .line 1093
    iget-object v7, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    if-eqz v7, :cond_0

    .line 1094
    return-void

    .line 1096
    :cond_0
    iget-object v8, p0, Ljava/security/Signature$Delegate;->lock:Ljava/lang/Object;

    monitor-enter v8

    .line 1097
    :try_start_0
    iget-object v7, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    monitor-exit v8

    .line 1098
    return-void

    .line 1100
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/security/Signature;->-get1()Lsun/security/util/Debug;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 1101
    sget v7, Ljava/security/Signature$Delegate;->warnCount:I

    add-int/lit8 v6, v7, -0x1

    sput v6, Ljava/security/Signature$Delegate;->warnCount:I

    .line 1102
    .local v6, "w":I
    if-ltz v6, :cond_3

    .line 1103
    invoke-static {}, Ljava/security/Signature;->-get1()Lsun/security/util/Debug;

    move-result-object v7

    const-string/jumbo v9, "Signature.init() not first method called, disabling delayed provider selection"

    invoke-virtual {v7, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 1105
    if-nez v6, :cond_2

    .line 1106
    invoke-static {}, Ljava/security/Signature;->-get1()Lsun/security/util/Debug;

    move-result-object v7

    const-string/jumbo v9, "Further warnings of this type will be suppressed"

    invoke-virtual {v7, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 1109
    :cond_2
    new-instance v7, Ljava/lang/Exception;

    const-string/jumbo v9, "Call trace"

    invoke-direct {v7, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1112
    .end local v6    # "w":I
    :cond_3
    const/4 v2, 0x0

    .line 1114
    .local v2, "lastException":Ljava/lang/Exception;
    invoke-static {p0}, Ljava/security/Signature;->-get0(Ljava/security/Signature;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "NONEwithRSA"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1115
    invoke-static {}, Ljava/security/Signature;->-get2()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lsun/security/jca/GetInstance;->getServices(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 1120
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    :goto_0
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v2    # "lastException":Ljava/lang/Exception;
    .local v5, "s$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider$Service;

    .line 1121
    .local v4, "s":Ljava/security/Provider$Service;
    invoke-static {v4}, Ljava/security/Signature;->-wrap0(Ljava/security/Provider$Service;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_4

    .line 1125
    :try_start_2
    invoke-static {v4}, Ljava/security/Signature$Delegate;->newInstance(Ljava/security/Provider$Service;)Ljava/security/SignatureSpi;

    move-result-object v7

    iput-object v7, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    .line 1126
    invoke-virtual {v4}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v7

    iput-object v7, p0, Ljava/security/Signature$Delegate;->provider:Ljava/security/Provider;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v8

    .line 1127
    return-void

    .line 1117
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    .end local v4    # "s":Ljava/security/Provider$Service;
    .end local v5    # "s$iterator":Ljava/util/Iterator;
    .restart local v2    # "lastException":Ljava/lang/Exception;
    :cond_5
    :try_start_3
    const-string/jumbo v7, "Signature"

    .line 1118
    invoke-static {p0}, Ljava/security/Signature;->-get0(Ljava/security/Signature;)Ljava/lang/String;

    move-result-object v9

    .line 1117
    invoke-static {v7, v9}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    goto :goto_0

    .line 1128
    .end local v2    # "lastException":Ljava/lang/Exception;
    .restart local v4    # "s":Ljava/security/Provider$Service;
    .restart local v5    # "s$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 1129
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    move-object v2, v0

    .local v2, "lastException":Ljava/lang/Exception;
    goto :goto_1

    .line 1132
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v2    # "lastException":Ljava/lang/Exception;
    .end local v4    # "s":Ljava/security/Provider$Service;
    :cond_6
    new-instance v1, Ljava/security/ProviderException;

    .line 1133
    const-string/jumbo v7, "Could not construct SignatureSpi instance"

    .line 1132
    invoke-direct {v1, v7}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 1134
    .local v1, "e":Ljava/security/ProviderException;
    if-eqz v2, :cond_7

    .line 1135
    invoke-virtual {v1, v2}, Ljava/security/ProviderException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1137
    :cond_7
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1096
    .end local v1    # "e":Ljava/security/ProviderException;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    .end local v5    # "s$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1049
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1050
    iget-object v2, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    instance-of v2, v2, Ljava/lang/Cloneable;

    if-eqz v2, :cond_0

    .line 1051
    iget-object v2, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v2}, Ljava/security/SignatureSpi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SignatureSpi;

    .line 1056
    .local v0, "sigSpiClone":Ljava/security/SignatureSpi;
    new-instance v1, Ljava/security/Signature$Delegate;

    invoke-static {p0}, Ljava/security/Signature;->-get0(Ljava/security/Signature;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/security/Signature$Delegate;-><init>(Ljava/security/SignatureSpi;Ljava/lang/String;)V

    .line 1057
    .local v1, "that":Ljava/security/Signature;
    iget-object v2, p0, Ljava/security/Signature;->provider:Ljava/security/Provider;

    iput-object v2, v1, Ljava/security/Signature;->provider:Ljava/security/Provider;

    .line 1058
    return-object v1

    .line 1060
    .end local v0    # "sigSpiClone":Ljava/security/SignatureSpi;
    .end local v1    # "that":Ljava/security/Signature;
    :cond_0
    new-instance v2, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v2}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v2
.end method

.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1298
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1299
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    .prologue
    .line 1303
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1304
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0}, Ljava/security/SignatureSpi;->engineGetParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 2
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1229
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/security/Signature$Delegate;->lock:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 1230
    :cond_0
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;)V

    .line 1228
    :goto_0
    return-void

    .line 1232
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, v1}, Ljava/security/Signature$Delegate;->chooseProvider(ILjava/security/Key;Ljava/security/SecureRandom;)V

    goto :goto_0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 1238
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/security/Signature$Delegate;->lock:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 1239
    :cond_0
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 1237
    :goto_0
    return-void

    .line 1241
    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Ljava/security/Signature$Delegate;->chooseProvider(ILjava/security/Key;Ljava/security/SecureRandom;)V

    goto :goto_0
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 2
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1220
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/security/Signature$Delegate;->lock:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 1221
    :cond_0
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineInitVerify(Ljava/security/PublicKey;)V

    .line 1219
    :goto_0
    return-void

    .line 1223
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, v1}, Ljava/security/Signature$Delegate;->chooseProvider(ILjava/security/Key;Ljava/security/SecureRandom;)V

    goto :goto_0
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 1286
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1287
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/SignatureSpi;->engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1285
    return-void
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 1292
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1293
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1291
    return-void
.end method

.method protected engineSign([BII)I
    .locals 1
    .param p1, "outbuf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 1268
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1269
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/SignatureSpi;->engineSign([BII)I

    move-result v0

    return v0
.end method

.method protected engineSign()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 1262
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1263
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0}, Ljava/security/SignatureSpi;->engineSign()[B

    move-result-object v0

    return-object v0
.end method

.method protected engineUpdate(B)V
    .locals 1
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 1246
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1247
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineUpdate(B)V

    .line 1245
    return-void
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1257
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1258
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 1256
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 1252
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1253
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/SignatureSpi;->engineUpdate([BII)V

    .line 1251
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 1
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 1274
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1275
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1}, Ljava/security/SignatureSpi;->engineVerify([B)Z

    move-result v0

    return v0
.end method

.method protected engineVerify([BII)Z
    .locals 1
    .param p1, "sigBytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 1280
    invoke-virtual {p0}, Ljava/security/Signature$Delegate;->chooseFirstProvider()V

    .line 1281
    iget-object v0, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/SignatureSpi;->engineVerify([BII)Z

    move-result v0

    return v0
.end method

.method public getCurrentSpi()Ljava/security/SignatureSpi;
    .locals 2

    .prologue
    .line 1309
    iget-object v0, p0, Ljava/security/Signature$Delegate;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1310
    :try_start_0
    iget-object v1, p0, Ljava/security/Signature$Delegate;->sigSpi:Ljava/security/SignatureSpi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 1309
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
