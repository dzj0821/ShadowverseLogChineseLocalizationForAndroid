.class public Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems$Creator;
.super Ljava/lang/Object;
.source "ViewPagerItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creator"
.end annotation


# instance fields
.field private final items:Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems;

    invoke-direct {v0, p1}, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems$Creator;->items:Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems;

    .line 38
    return-void
.end method


# virtual methods
.method public add(IFI)Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems$Creator;
    .locals 1
    .param p1, "title"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "width"    # F
    .param p3, "resource"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems$Creator;->items:Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems;

    invoke-virtual {v0}, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItem;->of(Ljava/lang/CharSequence;FI)Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems$Creator;->add(Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItem;)Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems$Creator;

    move-result-object v0

    return-object v0
.end method

.method public add(II)Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems$Creator;
    .locals 1
    .param p1, "title"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "resource"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems$Creator;->items:Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems;

    invoke-virtual {v0}, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItem;->of(Ljava/lang/CharSequence;I)Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems$Creator;->add(Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItem;)Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems$Creator;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItem;)Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems$Creator;
    .locals 1
    .param p1, "item"    # Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItem;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems$Creator;->items:Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems;->add(Ljava/lang/Object;)Z

    .line 54
    return-object p0
.end method

.method public add(Ljava/lang/CharSequence;I)Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems$Creator;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "resource"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 49
    invoke-static {p1, p2}, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItem;->of(Ljava/lang/CharSequence;I)Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems$Creator;->add(Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItem;)Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems$Creator;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems$Creator;->items:Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems;

    return-object v0
.end method
