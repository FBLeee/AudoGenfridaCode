.class public Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ChatSquareListFrameLayout.java"

# interfaces
.implements Lcom/mosheng/chat/e/h;


# annotations
.annotation runtime Lcom/ailiao/mosheng/commonlibrary/c/d/a;
.end annotation


# instance fields
.field a:Landroidx/recyclerview/widget/RecyclerView;

.field b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

.field public c:Lme/drakeet/multitype/MultiTypeAdapter;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Lcom/mosheng/chat/e/i;

.field private i:Lcom/ailiao/mosheng/commonlibrary/view/dialog/l;

.field private j:Landroid/content/Context;

.field private k:Lcom/mosheng/chat/entity/DialogButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->d:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 5
    iput p2, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->f:I

    const/16 p2, 0x14

    .line 6
    iput p2, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->g:I

    .line 7
    const-class p2, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;

    const-class p3, Lcom/ailiao/mosheng/commonlibrary/c/d/a;

    invoke-virtual {p2, p3}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 8
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 9
    :cond_0
    iput-object p1, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->j:Landroid/content/Context;

    .line 10
    new-instance p2, Lcom/mosheng/chat/e/k;

    invoke-direct {p2, p0}, Lcom/mosheng/chat/e/k;-><init>(Lcom/mosheng/chat/e/h;)V

    .line 11
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c021a

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0910e7

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object p1, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 13
    iget-object p1, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance p2, Lcom/mosheng/chatroom/entity/binder/a;

    invoke-direct {p2, p0}, Lcom/mosheng/chatroom/entity/binder/a;-><init>(Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;)V

    invoke-virtual {p1, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Lcom/scwang/smartrefresh/layout/b/d;)Lcom/scwang/smartrefresh/layout/a/i;

    .line 14
    iget-object p1, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance p2, Lcom/mosheng/chatroom/entity/binder/b;

    invoke-direct {p2, p0}, Lcom/mosheng/chatroom/entity/binder/b;-><init>(Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;)V

    invoke-virtual {p1, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a(Lcom/scwang/smartrefresh/layout/b/b;)Lcom/scwang/smartrefresh/layout/a/i;

    const p1, 0x7f090e1e

    .line 15
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    iget-object p1, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 17
    new-instance p1, Lme/drakeet/multitype/MultiTypeAdapter;

    iget-object p2, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->d:Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Lme/drakeet/multitype/MultiTypeAdapter;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->c:Lme/drakeet/multitype/MultiTypeAdapter;

    .line 18
    new-instance p1, Lcom/mosheng/chatroom/entity/binder/FamilyListForRoomListBinder;

    const-string p2, "type_chat_square_binder"

    invoke-direct {p1, p2}, Lcom/mosheng/chatroom/entity/binder/FamilyListForRoomListBinder;-><init>(Ljava/lang/String;)V

    .line 19
    new-instance p2, Lcom/mosheng/chatroom/entity/binder/c;

    invoke-direct {p2, p0}, Lcom/mosheng/chatroom/entity/binder/c;-><init>(Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;)V

    invoke-virtual {p1, p2}, Lcom/ailiao/mosheng/commonlibrary/view/a;->setOnItemClickListener(Lcom/ailiao/mosheng/commonlibrary/view/a$a;)V

    .line 20
    iget-object p2, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->c:Lme/drakeet/multitype/MultiTypeAdapter;

    const-class p3, Lcom/mosheng/family/entity/FamilyInfo;

    invoke-virtual {p2, p3, p1}, Lme/drakeet/multitype/MultiTypeAdapter;->a(Ljava/lang/Class;Lme/drakeet/multitype/e;)V

    .line 21
    new-instance p1, Lcom/mosheng/chatroom/entity/binder/ChatSquareVisitEmptyBinder;

    invoke-direct {p1}, Lcom/mosheng/chatroom/entity/binder/ChatSquareVisitEmptyBinder;-><init>()V

    .line 22
    iget-object p2, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->c:Lme/drakeet/multitype/MultiTypeAdapter;

    const-class p3, Lcom/mosheng/chatroom/entity/bean/ChatSquareVisitEmptyBean;

    invoke-virtual {p2, p3, p1}, Lme/drakeet/multitype/MultiTypeAdapter;->a(Ljava/lang/Class;Lme/drakeet/multitype/e;)V

    .line 23
    iget-object p1, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->c:Lme/drakeet/multitype/MultiTypeAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method static synthetic a(Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->f:I

    return p1
.end method

.method private a(Lcom/mosheng/chat/data/bean/ChatSquareListBean;Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 14
    iget-object p1, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 15
    iget-object p1, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->c:Lme/drakeet/multitype/MultiTypeAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/mosheng/chat/data/bean/ChatSquareListBean;->getRoom_list()Ljava/util/List;

    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lcom/mosheng/chat/data/bean/ChatSquareListBean;->getPopup()Lcom/mosheng/chat/entity/DialogButton;

    move-result-object v1

    iput-object v1, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->k:Lcom/mosheng/chat/entity/DialogButton;

    .line 18
    iget v1, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->f:I

    if-nez v1, :cond_1

    .line 19
    iget-object v1, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 20
    :cond_1
    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/bykvm_byte12b/a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 21
    iget-object v0, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->e:Ljava/lang/String;

    const-string v1, "visit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->f:I

    if-nez v0, :cond_2

    .line 22
    iget-object v0, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/mosheng/chatroom/entity/bean/ChatSquareVisitEmptyBean;

    const-string v2, "\u4f60\u8fd8\u672a\u8bbf\u95ee\u804a\u5929\u5ba4\uff0c\u770b\u770b\u63a8\u8350\u5427"

    invoke-direct {v1, v2}, Lcom/mosheng/chatroom/entity/bean/ChatSquareVisitEmptyBean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {p1}, Lcom/mosheng/chat/data/bean/ChatSquareListBean;->getRecommend_list()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/bykvm_byte12b/a;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 24
    iget-object v0, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/mosheng/chat/data/bean/ChatSquareListBean;->getRecommend_list()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->e:Ljava/lang/String;

    const-string v1, "follow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->f:I

    if-nez v0, :cond_3

    .line 26
    iget-object v0, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/mosheng/chatroom/entity/bean/ChatSquareVisitEmptyBean;

    const-string v2, "\u4f60\u8fd8\u672a\u5173\u6ce8\u804a\u5929\u5ba4\uff0c\u770b\u770b\u63a8\u8350\u5427"

    invoke-direct {v1, v2}, Lcom/mosheng/chatroom/entity/bean/ChatSquareVisitEmptyBean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {p1}, Lcom/mosheng/chat/data/bean/ChatSquareListBean;->getRecommend_list()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/bykvm_byte12b/a;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28
    iget-object v0, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/mosheng/chat/data/bean/ChatSquareListBean;->getRecommend_list()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 29
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->c:Lme/drakeet/multitype/MultiTypeAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    if-nez p2, :cond_5

    .line 30
    iget-object p1, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h(Z)Lcom/scwang/smartrefresh/layout/a/i;

    goto :goto_1

    .line 31
    :cond_4
    iget-object p1, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 32
    iget-object p1, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->c:Lme/drakeet/multitype/MultiTypeAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    if-nez p2, :cond_5

    .line 33
    iget p1, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->f:I

    add-int/lit8 p1, p1, 0x14

    iput p1, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->f:I

    .line 34
    iget-object p1, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h(Z)Lcom/scwang/smartrefresh/layout/a/i;

    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;)V
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->h:Lcom/mosheng/chat/e/i;

    iget-object v1, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->e:Ljava/lang/String;

    iget v2, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->f:I

    iget p0, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->g:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    check-cast v0, Lcom/mosheng/chat/e/k;

    invoke-virtual {v0, v1, v2, p0}, Lcom/mosheng/chat/e/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;Lcom/mosheng/family/entity/FamilyInfo;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->a(Lcom/mosheng/family/entity/FamilyInfo;)V

    return-void
.end method

.method private a(Lcom/mosheng/family/entity/FamilyInfo;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/mosheng/family/entity/FamilyInfo;->getMembercount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mosheng/common/util/h0;->f(Ljava/lang/String;)I

    move-result v0

    .line 4
    invoke-virtual {p1}, Lcom/mosheng/family/entity/FamilyInfo;->getMax_users()I

    move-result v1

    const-string v2, "1"

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/mosheng/family/entity/FamilyInfo;->getIs_inroom()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/mosheng/family/entity/FamilyInfo;->getIs_nobility()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->k:Lcom/mosheng/chat/entity/DialogButton;

    if-eqz p1, :cond_3

    .line 6
    new-instance p1, Lcom/mosheng/chat/view/y;

    invoke-static {}, Le/b/a/a/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/mosheng/chat/view/y;-><init>(Landroid/content/Context;)V

    .line 7
    iget-object v0, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->k:Lcom/mosheng/chat/entity/DialogButton;

    invoke-virtual {p1, v0}, Lcom/mosheng/chat/view/y;->a(Lcom/mosheng/chat/entity/DialogButton;)V

    .line 8
    new-instance v0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout$a;

    invoke-direct {v0, p0}, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout$a;-><init>(Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;)V

    invoke-virtual {p1, v0}, Lcom/ailiao/mosheng/commonlibrary/view/dialog/a;->a(Lcom/ailiao/mosheng/commonlibrary/view/dialog/a$a;)V

    .line 9
    invoke-virtual {p1}, Lcom/ailiao/mosheng/commonlibrary/view/dialog/a;->show()V

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/mosheng/family/entity/FamilyInfo;->getIs_offical()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 11
    invoke-static {}, Lcom/mosheng/g/b/a;->k()Lcom/mosheng/g/b/a;

    move-result-object v3

    iget-object v4, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->j:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/mosheng/family/entity/FamilyInfo;->getRoom_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/mosheng/family/entity/FamilyInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/mosheng/family/entity/FamilyInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/mosheng/family/entity/FamilyInfo;->getBackgroud()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v3 .. v9}, Lcom/mosheng/g/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->j:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/mosheng/chat/data/bean/ChatSquareListBean;I)V
    .locals 3

    .line 35
    iput p2, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->f:I

    if-nez p2, :cond_0

    .line 36
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 37
    invoke-static {}, Lcom/mosheng/control/init/ApplicationBase;->l()Lcom/mosheng/user/model/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ailiao/mosheng/commonlibrary/bean/MsUserInfoBean;->getUserid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mosheng/c0/b/a;->f(Ljava/lang/String;)Lcom/mosheng/c0/b/a;

    move-result-object v0

    const-string v1, "KEY_chat_square"

    invoke-static {v1}, Le/b/a/a/a;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/mosheng/c0/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->a(Lcom/mosheng/chat/data/bean/ChatSquareListBean;Z)V

    .line 39
    iget-object p1, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b()Lcom/scwang/smartrefresh/layout/a/i;

    .line 40
    iget-object p1, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d()Lcom/scwang/smartrefresh/layout/a/i;

    return-void
.end method

.method public a()Z
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->e:Ljava/lang/String;

    const-string v1, "follow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/ailiao/android/sdk/net/a;)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->i:Lcom/ailiao/mosheng/commonlibrary/view/dialog/l;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->i:Lcom/ailiao/mosheng/commonlibrary/view/dialog/l;

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/ailiao/android/sdk/net/a;->c()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mosheng/family/asynctask/j$a;

    if-eqz v0, :cond_5

    .line 6
    invoke-virtual {p1}, Lcom/ailiao/android/sdk/net/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosheng/family/asynctask/j$a;

    .line 7
    invoke-virtual {v0}, Lcom/mosheng/family/asynctask/j$a;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 8
    :goto_0
    iget-object v4, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 9
    iget-object v4, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 10
    instance-of v5, v4, Lcom/mosheng/family/entity/FamilyInfo;

    if-eqz v5, :cond_1

    .line 11
    check-cast v4, Lcom/mosheng/family/entity/FamilyInfo;

    .line 12
    invoke-virtual {v4}, Lcom/mosheng/family/entity/FamilyInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mosheng/common/util/h0;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 13
    invoke-virtual {v4, v2}, Lcom/mosheng/family/entity/FamilyInfo;->setApplyState(I)V

    .line 14
    iget-object v1, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->c:Lme/drakeet/multitype/MultiTypeAdapter;

    if-eqz v1, :cond_2

    const-string v2, "LOADING"

    .line 15
    invoke-virtual {v1, v3, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 16
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/mosheng/family/asynctask/j$a;->b()Lcom/ailiao/mosheng/commonlibrary/bean/CommonFamilyRecommendBean;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 18
    invoke-static {}, Lcom/ailiao/mosheng/commonlibrary/c/c;->a()Lcom/ailiao/mosheng/commonlibrary/c/c;

    move-result-object p1

    const-string v1, "common_key_show_family_recommend"

    const-string v2, "1"

    invoke-virtual {p1, v1, v2}, Lcom/ailiao/mosheng/commonlibrary/c/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance p1, Lcom/mosheng/m/c/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/mosheng/m/c/a;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {v0}, Lcom/mosheng/family/asynctask/j$a;->b()Lcom/ailiao/mosheng/commonlibrary/bean/CommonFamilyRecommendBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mosheng/m/c/a;->a(Lcom/ailiao/mosheng/commonlibrary/bean/CommonFamilyRecommendBean;)V

    .line 21
    invoke-virtual {p1}, Lcom/ailiao/mosheng/commonlibrary/view/dialog/a;->show()V

    goto :goto_2

    .line 22
    :cond_3
    invoke-virtual {v0}, Lcom/mosheng/family/asynctask/j$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ailiao/android/sdk/b/c;->p(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 23
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0}, Lcom/mosheng/family/asynctask/j$a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mosheng/common/util/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 24
    :cond_4
    invoke-virtual {p1}, Lcom/ailiao/android/sdk/net/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ailiao/android/sdk/b/d/a;->c(Ljava/lang/String;)V

    goto :goto_2

    .line 25
    :cond_5
    invoke-virtual {p1}, Lcom/ailiao/android/sdk/net/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ailiao/android/sdk/b/d/a;->c(Ljava/lang/String;)V

    .line 26
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    if-eqz p1, :cond_7

    .line 27
    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b()Lcom/scwang/smartrefresh/layout/a/i;

    .line 28
    iget-object p1, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d()Lcom/scwang/smartrefresh/layout/a/i;

    :cond_7
    return-void
.end method

.method public b()Z
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->e:Ljava/lang/String;

    const-string v1, "visit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 2

    .line 1
    const-class v0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;

    const-class v1, Lcom/ailiao/mosheng/commonlibrary/c/d/a;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->h:Lcom/mosheng/chat/e/i;

    invoke-interface {v0}, Lcom/ailiao/mosheng/commonlibrary/d/a;->a()V

    return-void
.end method

.method public getFamilyList()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->h:Lcom/mosheng/chat/e/i;

    iget-object v1, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->e:Ljava/lang/String;

    iget v2, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->f:I

    iget v3, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->g:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/mosheng/chat/e/k;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mosheng/chat/e/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public getFamilyListCache()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/mosheng/control/init/ApplicationBase;->l()Lcom/mosheng/user/model/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ailiao/mosheng/commonlibrary/bean/MsUserInfoBean;->getUserid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mosheng/c0/b/a;->f(Ljava/lang/String;)Lcom/mosheng/c0/b/a;

    move-result-object v0

    const-string v1, "KEY_chat_square"

    invoke-static {v1}, Le/b/a/a/a;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mosheng/c0/b/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    const-class v1, Lcom/mosheng/chat/data/bean/ChatSquareListBean;

    invoke-static {v0, v1}, Le/b/a/a/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosheng/chat/data/bean/ChatSquareListBean;

    const/4 v1, 0x1

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->a(Lcom/mosheng/chat/data/bean/ChatSquareListBean;Z)V

    :cond_0
    return-void
.end method

.method public getOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->f:I

    return v0
.end method

.method public onMessageEvent(Lcom/ailiao/mosheng/commonlibrary/c/d/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ailiao/mosheng/commonlibrary/c/d/c<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ailiao/mosheng/commonlibrary/c/d/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x5f008f58

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    const v2, -0x5f008f55

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "EVENT_CODE_0097"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "EVENT_CODE_0094"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_3

    goto :goto_3

    .line 2
    :cond_3
    invoke-virtual {p1}, Lcom/ailiao/mosheng/commonlibrary/c/d/c;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_7

    .line 3
    invoke-virtual {p0}, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 4
    invoke-virtual {p0, v3}, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->setOffset(I)V

    .line 5
    invoke-virtual {p0}, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->getFamilyList()V

    goto :goto_3

    .line 6
    :cond_4
    invoke-virtual {p1}, Lcom/ailiao/mosheng/commonlibrary/c/d/c;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 7
    invoke-virtual {p1}, Lcom/ailiao/mosheng/commonlibrary/c/d/c;->b()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mosheng/family/entity/FamilyInfo;

    if-eqz v0, :cond_7

    .line 8
    invoke-virtual {p1}, Lcom/ailiao/mosheng/commonlibrary/c/d/c;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mosheng/family/entity/FamilyInfo;

    if-nez p1, :cond_5

    goto :goto_3

    .line 9
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    .line 10
    iget-object v0, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 11
    instance-of v1, v0, Lcom/mosheng/family/entity/FamilyInfo;

    if-eqz v1, :cond_6

    .line 12
    check-cast v0, Lcom/mosheng/family/entity/FamilyInfo;

    .line 13
    invoke-virtual {v0}, Lcom/mosheng/family/entity/FamilyInfo;->getRoom_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mosheng/common/util/h0;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mosheng/family/entity/FamilyInfo;->getRoom_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 14
    invoke-virtual {p1}, Lcom/mosheng/family/entity/FamilyInfo;->getShow_airdrop_icon()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mosheng/family/entity/FamilyInfo;->setShow_airdrop_icon(I)V

    .line 15
    iget-object p1, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->c:Lme/drakeet/multitype/MultiTypeAdapter;

    if-eqz p1, :cond_7

    .line 16
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    return-void
.end method

.method public setOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->f:I

    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPresenter(Lcom/mosheng/chat/e/i;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->h:Lcom/mosheng/chat/e/i;

    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/mosheng/chat/e/i;

    invoke-virtual {p0, p1}, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->setPresenter(Lcom/mosheng/chat/e/i;)V

    return-void
.end method

.method public setTab(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mosheng/chatroom/entity/binder/ChatSquareListFrameLayout;->e:Ljava/lang/String;

    return-void
.end method
