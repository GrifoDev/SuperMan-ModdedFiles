.class final Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/i18n/phonenumbers/MetadataSource;


# instance fields
.field private final geographicalRegions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final metadataLoader:Lcom/google/i18n/phonenumbers/MetadataLoader;

.field private final nonGeographicalRegions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final phoneNumberMetadataFilePrefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/i18n/phonenumbers/MetadataLoader;)V
    .locals 1

    const-string v0, "/com/google/i18n/phonenumbers/data/PhoneNumberMetadataProto"

    invoke-direct {p0, v0, p1}, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;-><init>(Ljava/lang/String;Lcom/google/i18n/phonenumbers/MetadataLoader;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/i18n/phonenumbers/MetadataLoader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->geographicalRegions:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->nonGeographicalRegions:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->phoneNumberMetadataFilePrefix:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->metadataLoader:Lcom/google/i18n/phonenumbers/MetadataLoader;

    return-void
.end method

.method private isNonGeographical(I)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/i18n/phonenumbers/CountryCodeToRegionCodeMap;->getCountryCodeToRegionCodeMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    const-string v3, "001"

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public getMetadataForNonGeographicalRegion(I)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 4

    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->isNonGeographical(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->nonGeographicalRegions:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->phoneNumberMetadataFilePrefix:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->metadataLoader:Lcom/google/i18n/phonenumbers/MetadataLoader;

    invoke-static {v0, v1, v2, v3}, Lcom/google/i18n/phonenumbers/MetadataManager;->getMetadataFromMultiFilePrefix(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/google/i18n/phonenumbers/MetadataLoader;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    goto :goto_0
.end method

.method public getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 3

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->geographicalRegions:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->phoneNumberMetadataFilePrefix:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->metadataLoader:Lcom/google/i18n/phonenumbers/MetadataLoader;

    invoke-static {p1, v0, v1, v2}, Lcom/google/i18n/phonenumbers/MetadataManager;->getMetadataFromMultiFilePrefix(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/google/i18n/phonenumbers/MetadataLoader;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    return-object v0
.end method
