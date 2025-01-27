# typed: strong

module ActiveModel::Dirty
  extend T::Sig
  sig { params(attr: Symbol, from: T.untyped, to: T.untyped).returns(T::Boolean) }
  def attribute_changed?(attr, from: nil, to: nil); end

  sig { params(attr_name: Symbol).returns(T::Boolean) }
  def attribute_changed_in_place?(attr_name); end

  sig { params(attr_name: Symbol).returns(T::Boolean) }
  def attribute_previously_changed?(attr_name); end

  sig { returns(T::Boolean) }
  def changed?; end
end

module ActiveModel::Validations
  module ClassMethods
    # https://github.com/rails/rails/blob/v5.2.3/activemodel/lib/active_model/validations.rb#L136-L154
    sig do
      params(
        names: T.any(Symbol, String),
        if: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
        on: T.any(Symbol, String),
        prepend: T::Boolean,
        unless: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
      ).void
    end
    def validate(
      *names,
      if: nil,
      on: nil,
      prepend: false,
      unless: nil
    ); end

    # https://github.com/rails/rails/blob/v5.2.3/activemodel/lib/active_model/validations/validates.rb#L75-L105
    sig do
      params(
        names: T.any(Symbol, String), # a splat of at least one attribute name
        absence: T.any(T::Boolean, T::Hash[T.untyped, T.untyped]),
        acceptance: T.any(T::Boolean, T::Hash[T.untyped, T.untyped]),
        allow_blank: T::Boolean,
        allow_nil: T::Boolean,
        confirmation: T.any(T::Boolean, T::Hash[T.untyped, T.untyped]),
        # `exclusion` and `inclusion` are tricky to type without better support
        # for overloading and shapes. Value can be anything that responds to
        # `include?` (e.g. (1..3)), or a hash having an `in` or `within` key,
        # like { in: [1, 2, 3], ... }
        exclusion: T::Enumerable[T.untyped],
        # `format` hash must additionally contain either :with or :without keys.
        # Alternatively, it can be a Regexp.
        format: T.any(T::Hash[T.untyped, T.untyped], Regexp),
        if: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
        # `exclusion` and `inclusion` are tricky to type without better support
        # for overloading and shapes. Value can be anything that responds to
        # `include?` (e.g. (1..3)), or a hash having an `in` or `within` key,
        # like { in: [1, 2, 3], ... }
        inclusion: T::Enumerable[T.untyped],
        # if Hash, must contain :in, :within, :maximum, :minimum, or :is keys
        length: T.any(T::Range[T.untyped], T::Hash[T.untyped, T.untyped]),
        numericality: T.any(T::Boolean, T::Hash[T.untyped, T.untyped]),
        on: T.any(Symbol, String, T::Array[T.any(Symbol, String)]),
        presence: T::Boolean,
        size: T.any(T::Boolean, T::Hash[T.untyped, T.untyped]),
        strict: T::Boolean,
        uniqueness: T.any(T::Boolean, T::Hash[T.untyped, T.untyped]),
        unless: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
      ).void
    end
    def validates(
      *names,
      absence: false,
      acceptance: {},
      allow_blank: false,
      allow_nil: false,
      confirmation: false,
      exclusion: [],
      format: {},
      if: nil,
      inclusion: [],
      length: {},
      numericality: false,
      on: :_,
      presence: false,
      size: false,
      strict: false,
      uniqueness: false,
      unless: :_
    )
    end
  end
end

class ActiveModel::Type::Boolean
  sig { params(arg0: T.untyped).returns(T.nilable(T::Boolean))}
  def cast(arg0); end
end

module ActiveModel::Validations::HelperMethods
  sig do
    params(
      attr_names: T.any(String, Symbol),
      message: String,
      if: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
      unless: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
      on: T.any(Symbol, String),
      allow_nil: T::Boolean,
      allow_blank: T::Boolean,
      strict: T::Boolean
    ).void
  end
  def validates_absence_of(
    *attr_names,
    message: 'must be blank',
    if: nil,
    unless: :_,
    on: :_,
    allow_nil: false,
    allow_blank: false,
    strict: false
  ); end

  sig do
    params(
      attr_names: T.any(String, Symbol),
      message: String,
      accept: T.untyped,
      if: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
      unless: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
      on: T.any(Symbol, String),
      allow_nil: T::Boolean,
      allow_blank: T::Boolean,
      strict: T::Boolean
    ).void
  end
  def validates_acceptance_of(
    *attr_names,
    message: 'must be accepted',
    accept: ['1', true],
    if: nil,
    unless: :_,
    on: :_,
    allow_nil: false,
    allow_blank: false,
    strict: false
  ); end

  sig do
    params(
      attr_names: T.any(String, Symbol),
      message: String,
      case_sensitive: T::Boolean,
      if: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
      unless: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
      on: T.any(Symbol, String),
      allow_nil: T::Boolean,
      allow_blank: T::Boolean,
      strict: T::Boolean
    ).void
  end
  def validates_confirmation_of(
    *attr_names,
    message: "doesn't match %{translated_attribute_name}",
    case_sensitive: true,
    if: nil,
    unless: :_,
    on: :_,
    allow_nil: false,
    allow_blank: false,
    strict: false
  ); end

  # A type alias for the in/within parameters on the
  # validates_(inclusion/exclusion)_of methods.
  InWithinType = T.type_alias do
    T.nilable(
      T.any(
        Symbol,
        String,
        T::Array[T.any(String, Symbol)],
        T::Range[Integer],
        T.proc.params(arg0: T.untyped).returns(T::Boolean)
      )
    )
  end
  sig do
    params(
      attr_names: T.any(String, Symbol),
      message: String,
      in: InWithinType,
      within: InWithinType,
      if: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
      unless: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
      on: T.any(Symbol, String),
      allow_nil: T::Boolean,
      allow_blank: T::Boolean,
      strict: T::Boolean
    ).void
  end
  def validates_exclusion_of(
    *attr_names,
    message: 'is reserved',
    in: nil,
    within: nil,
    if: nil,
    unless: :_,
    on: :_,
    allow_nil: false,
    allow_blank: false,
    strict: false
  ); end

  sig do
    params(
      attr_names: T.any(String, Symbol),
      message: String,
      with: T.untyped,
      without: T.untyped,
      multiline: T.untyped,
      if: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
      unless: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
      on: T.any(Symbol, String),
      allow_nil: T::Boolean,
      allow_blank: T::Boolean,
      strict: T::Boolean
    ).void
  end
  def validates_format_of(
    *attr_names,
    message: 'is invalid',
    with: nil,
    without: nil,
    multiline: nil,
    if: nil,
    unless: :_,
    on: :_,
    allow_nil: false,
    allow_blank: false,
    strict: false
  ); end

  sig do
    params(
      attr_names: T.any(String, Symbol),
      message: String,
      in: InWithinType,
      within: InWithinType,
      if: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
      unless: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
      on: T.any(Symbol, String),
      allow_nil: T::Boolean,
      allow_blank: T::Boolean,
      strict: T::Boolean
    ).void
  end
  def validates_inclusion_of(
    *attr_names,
    message: 'is not included in the list',
    in: nil,
    within: nil,
    if: nil,
    unless: :_,
    on: :_,
    allow_nil: false,
    allow_blank: false,
    strict: false
  ); end

  sig do
    params(
      attr_names: T.any(String, Symbol),
      message: T.nilable(String),
      minimum: T.nilable(Integer),
      maximum: T.nilable(Integer),
      is: T.nilable(Integer),
      within: T.nilable(T::Range[Integer]),
      in: T.nilable(T::Range[Integer]),
      too_long: String,
      too_short: String,
      wrong_length: String,
      if: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
      unless: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
      on: T.any(Symbol, String),
      allow_nil: T::Boolean,
      allow_blank: T::Boolean,
      strict: T::Boolean
    ).void
  end
  def validates_length_of(
    *attr_names,
    message: nil,
    minimum: nil,
    maximum: nil,
    is: nil,
    within: nil,
    in: nil,
    too_long: 'is too long (maximum is %{count} characters)',
    too_short: 'is too short (minimum is %{count} characters)',
    wrong_length: 'is the wrong length (should be %{count} characters)',
    if: nil,
    unless: :_,
    on: :_,
    allow_nil: false,
    allow_blank: false,
    strict: false
  ); end

  # validates_size_of is an alias of validates_length_of
  sig do
    params(
      attr_names: T.any(String, Symbol),
      message: T.nilable(String),
      minimum: T.nilable(Integer),
      maximum: T.nilable(Integer),
      is: T.nilable(Integer),
      within: T.nilable(T::Range[Integer]),
      in: T.nilable(T::Range[Integer]),
      too_long: String,
      too_short: String,
      wrong_length: String,
      if: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
      unless: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
      on: T.any(Symbol, String),
      allow_nil: T::Boolean,
      allow_blank: T::Boolean,
      strict: T::Boolean
    ).void
  end
  def validates_size_of(
    *attr_names,
    message: nil,
    minimum: nil,
    maximum: nil,
    is: nil,
    within: nil,
    in: nil,
    too_long: 'is too long (maximum is %{count} characters)',
    too_short: 'is too short (minimum is %{count} characters)',
    wrong_length: 'is the wrong length (should be %{count} characters)',
    if: nil,
    unless: :_,
    on: :_,
    allow_nil: false,
    allow_blank: false,
    strict: false
  ); end

  # Create a type alias so we don't have to repeat this long type signature 6 times.
  NumberComparatorType = T.type_alias {T.nilable(T.any(Integer, Float, T.proc.params(arg0: T.untyped).returns(T::Boolean), Symbol))}
  sig do
    params(
      attr_names: T.any(String, Symbol),
      message: String,
      only_integer: T::Boolean,
      greater_than: NumberComparatorType,
      greater_than_or_equal_to: NumberComparatorType,
      equal_to: NumberComparatorType,
      less_than: NumberComparatorType,
      less_than_or_equal_to: NumberComparatorType,
      other_than: NumberComparatorType,
      odd: T::Boolean,
      even: T::Boolean,
      if: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
      unless: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
      on: T.any(Symbol, String),
      allow_nil: T::Boolean,
      allow_blank: T::Boolean,
      strict: T::Boolean
    ).void
  end
  def validates_numericality_of(
    *attr_names,
    message: 'is not a number',
    only_integer: false,
    greater_than: nil,
    greater_than_or_equal_to: nil,
    equal_to: nil,
    less_than: nil,
    less_than_or_equal_to: nil,
    other_than: nil,
    odd: false,
    even: false,
    if: nil,
    unless: :_,
    on: :_,
    allow_nil: false,
    allow_blank: false,
    strict: false
  ); end

  sig do
    params(
      attr_names: T.any(String, Symbol),
      message: String,
      if: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
      unless: T.any(Symbol, String, T.proc.params(arg0: T.untyped).returns(T::Boolean)),
      on: T.any(Symbol, String),
      allow_nil: T::Boolean,
      allow_blank: T::Boolean,
      strict: T::Boolean
    ).void
  end
  def validates_presence_of(
    *attr_names,
    message: "can't be blank",
    if: nil,
    unless: :_,
    on: :_,
    allow_nil: false,
    allow_blank: false,
    strict: false
  ); end
end
