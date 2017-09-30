.class final Lcom/google/i18n/phonenumbers/SingleFileMetadataSourceImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/i18n/phonenumbers/MetadataSource;


# instance fields
.field private final metadataLoader:Lcom/google/i18n/phonenumbers/MetadataLoader;

.field private final phoneNumberMetadataFileName:Ljava/lang/String;

.field private final phoneNumberMetadataRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/i18n/phonenumbers/MetadataLoader;)V
    .locals 1

    const-string v0, "/com/google/i18n/phonenumbers/data/SingleFilePhoneNumberMetadataProto"

    invoke-direct {p0, v0, p1}, Lcom/google/i18n/phonenumbers/SingleFileMetadataSourceImpl;-><init>(Ljava/lang/String;Lcom/google/i18n/phonenumbers/MetadataLoader;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/i18n/phonenumbers/MetadataLoader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/SingleFileMetadataSourceImpl;->phoneNumberMetadataRef:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lcom/google/i18n/phonenumbers/SingleFileMetadataSourceImpl;->phoneNumberMetadataFileName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/i18n/phonenumbers/SingleFileMetadataSourceImpl;->metadataLoader:Lcom/google/i18n/phonenumbers/MetadataLoader;

    return-void
.end method


# virtual methods
.method public getMetadataForNonGeographicalRegion(I)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 3

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/SingleFileMetadataSourceImpl;->phoneNumberMetadataRef:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/SingleFileMetadataSourceImpl;->phoneNumberMetadataFileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/SingleFileMetadataSourceImpl;->metadataLoader:Lcom/google/i18n/phonenumbers/MetadataLoader;

    invoke-static {v0, v1, v2}, Lcom/google/i18n/phonenumbers/MetadataManager;->getSingleFileMetadataMaps(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Lcom/google/i18n/phonenumbers/MetadataLoader;)Lcom/google/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;->get(I)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 3

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/SingleFileMetadataSourceImpl;->phoneNumberMetadataRef:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/SingleFileMetadataSourceImpl;->phoneNumberMetadataFileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/SingleFileMetadataSourceImpl;->metadataLoader:Lcom/google/i18n/phonenumbers/MetadataLoader;

    invoke-static {v0, v1, v2}, Lcom/google/i18n/phonenumbers/MetadataManager;->getSingleFileMetadataMaps(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Lcom/google/i18n/phonenumbers/MetadataLoader;)Lcom/google/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;->get(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    return-object v0
.end method
