.class public Lcom/thoughtworks/xstream/converters/extended/SubjectConverter;
.super Lcom/thoughtworks/xstream/converters/collections/AbstractCollectionConverter;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/collections/AbstractCollectionConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    return-void
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1

    const-class v0, Ljavax/security/auth/Subject;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 1

    check-cast p1, Ljavax/security/auth/Subject;

    invoke-virtual {p1}, Ljavax/security/auth/Subject;->getPrincipals()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/thoughtworks/xstream/converters/extended/SubjectConverter;->marshalPrincipals(Ljava/util/Set;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    invoke-virtual {p1}, Ljavax/security/auth/Subject;->getPublicCredentials()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/thoughtworks/xstream/converters/extended/SubjectConverter;->marshalPublicCredentials(Ljava/util/Set;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    invoke-virtual {p1}, Ljavax/security/auth/Subject;->getPrivateCredentials()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/thoughtworks/xstream/converters/extended/SubjectConverter;->marshalPrivateCredentials(Ljava/util/Set;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    invoke-virtual {p1}, Ljavax/security/auth/Subject;->isReadOnly()Z

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/thoughtworks/xstream/converters/extended/SubjectConverter;->marshalReadOnly(ZLcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    return-void
.end method

.method protected marshalPrincipals(Ljava/util/Set;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 2

    const-string v0, "principals"

    invoke-interface {p2, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p3, p2}, Lcom/thoughtworks/xstream/converters/extended/SubjectConverter;->writeItem(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/MarshallingContext;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    return-void
.end method

.method protected marshalPrivateCredentials(Ljava/util/Set;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 0

    return-void
.end method

.method protected marshalPublicCredentials(Ljava/util/Set;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 0

    return-void
.end method

.method protected marshalReadOnly(ZLcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    .locals 1

    const-string v0, "readOnly"

    invoke-interface {p2, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->setValue(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    return-void
.end method

.method protected populateSet(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/util/Set;
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    :goto_0
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/converters/extended/SubjectConverter;->readItem(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    return-object v0
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/converters/extended/SubjectConverter;->unmarshalPrincipals(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/converters/extended/SubjectConverter;->unmarshalPublicCredentials(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/converters/extended/SubjectConverter;->unmarshalPrivateCredentials(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/converters/extended/SubjectConverter;->unmarshalReadOnly(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)Z

    move-result v3

    new-instance v4, Ljavax/security/auth/Subject;

    invoke-direct {v4, v3, v0, v1, v2}, Ljavax/security/auth/Subject;-><init>(ZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-object v4
.end method

.method protected unmarshalPrincipals(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/util/Set;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/converters/extended/SubjectConverter;->populateSet(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected unmarshalPrivateCredentials(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/util/Set;
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method protected unmarshalPublicCredentials(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/util/Set;
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method protected unmarshalReadOnly(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)Z
    .locals 1

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    return v0
.end method
