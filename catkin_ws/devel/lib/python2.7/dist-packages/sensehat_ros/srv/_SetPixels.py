# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from sensehat_ros/SetPixelsRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class SetPixelsRequest(genpy.Message):
  _md5sum = "b50ba911a4776c69c8ff57eb35b1d884"
  _type = "sensehat_ros/SetPixelsRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# sets each of the 64 LED matrix pixels to a specific RGB color and waits for the specified amount of seconds
int16[64] pixels_red
int16[64] pixels_green
int16[64] pixels_blue
float64 duration
"""
  __slots__ = ['pixels_red','pixels_green','pixels_blue','duration']
  _slot_types = ['int16[64]','int16[64]','int16[64]','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       pixels_red,pixels_green,pixels_blue,duration

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SetPixelsRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.pixels_red is None:
        self.pixels_red = [0] * 64
      if self.pixels_green is None:
        self.pixels_green = [0] * 64
      if self.pixels_blue is None:
        self.pixels_blue = [0] * 64
      if self.duration is None:
        self.duration = 0.
    else:
      self.pixels_red = [0] * 64
      self.pixels_green = [0] * 64
      self.pixels_blue = [0] * 64
      self.duration = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      buff.write(_get_struct_64h().pack(*self.pixels_red))
      buff.write(_get_struct_64h().pack(*self.pixels_green))
      buff.write(_get_struct_64h().pack(*self.pixels_blue))
      _x = self.duration
      buff.write(_get_struct_d().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 128
      self.pixels_red = _get_struct_64h().unpack(str[start:end])
      start = end
      end += 128
      self.pixels_green = _get_struct_64h().unpack(str[start:end])
      start = end
      end += 128
      self.pixels_blue = _get_struct_64h().unpack(str[start:end])
      start = end
      end += 8
      (self.duration,) = _get_struct_d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      buff.write(self.pixels_red.tostring())
      buff.write(self.pixels_green.tostring())
      buff.write(self.pixels_blue.tostring())
      _x = self.duration
      buff.write(_get_struct_d().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 128
      self.pixels_red = numpy.frombuffer(str[start:end], dtype=numpy.int16, count=64)
      start = end
      end += 128
      self.pixels_green = numpy.frombuffer(str[start:end], dtype=numpy.int16, count=64)
      start = end
      end += 128
      self.pixels_blue = numpy.frombuffer(str[start:end], dtype=numpy.int16, count=64)
      start = end
      end += 8
      (self.duration,) = _get_struct_d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_64h = None
def _get_struct_64h():
    global _struct_64h
    if _struct_64h is None:
        _struct_64h = struct.Struct("<64h")
    return _struct_64h
_struct_d = None
def _get_struct_d():
    global _struct_d
    if _struct_d is None:
        _struct_d = struct.Struct("<d")
    return _struct_d
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from sensehat_ros/SetPixelsResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class SetPixelsResponse(genpy.Message):
  _md5sum = "d41d8cd98f00b204e9800998ecf8427e"
  _type = "sensehat_ros/SetPixelsResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """"""
  __slots__ = []
  _slot_types = []

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SetPixelsResponse, self).__init__(*args, **kwds)

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
class SetPixels(object):
  _type          = 'sensehat_ros/SetPixels'
  _md5sum = 'b50ba911a4776c69c8ff57eb35b1d884'
  _request_class  = SetPixelsRequest
  _response_class = SetPixelsResponse